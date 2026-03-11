import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:worth_to_note/feature_todos/application/todo_usecases.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo_entity.dart';
import 'package:worth_to_note/feature_todos/domain/failures/add_todo_failure.dart';
import 'package:worth_to_note/feature_todos/domain/failures/delete_todo_failure.dart';
import 'package:worth_to_note/feature_todos/domain/failures/todo_listen_failure.dart';
import 'package:worth_to_note/feature_todos/domain/failures/update_todo_failure.dart';
import 'package:worth_to_note/feature_todos/presentation/cubits/todo_cubit.dart';
import 'package:worth_to_note/feature_todos/presentation/cubits/todo_cubit_state.dart';

class _MockTodoUsecases extends Mock implements TodoUsecases {}

void main() {
  group('TodoCubit', () {
    late _MockTodoUsecases usecases;
    late StreamController<Either<TodoListenFailure, List<TodoEntity>>>
        todosController;

    // A typical todo used across tests.
    final aTodo = TodoEntity(
      id: 1,
      title: 'Buy groceries',
      description: 'Milk and eggs',
      isDone: false,
      createdAt: DateTime(2024, 1, 1),
    );

    setUp(() {
      usecases = _MockTodoUsecases();
      todosController = StreamController.broadcast();
      when(() => usecases.listenTodos())
          .thenAnswer((_) => todosController.stream);
    });

    tearDown(() => todosController.close());

    // Cubit subscribes to the todos stream as soon as it is created.
    // These tests exercise that reactive pipeline.

    blocTest<TodoCubit, TodoCubitState>(
      'shows the list when new todos arrive from the database',
      build: () => TodoCubit(usecases: usecases),
      act: (_) => todosController.add(right([aTodo])),
      expect: () => [
        TodoCubitLoaded(todos: [aTodo])
      ],
    );

    blocTest<TodoCubit, TodoCubitState>(
      'shows an error when the database signals a failure',
      build: () => TodoCubit(usecases: usecases),
      act: (_) => todosController.add(
        left(const TodoListenFailure(failureMessage: 'DB unavailable')),
      ),
      expect: () => [const TodoCubitError('DB unavailable')],
    );

    blocTest<TodoCubit, TodoCubitState>(
      'shows an error when the stream itself throws unexpectedly',
      build: () => TodoCubit(usecases: usecases),
      act: (_) => todosController.addError(Exception('connection lost')),
      expect: () => [isA<TodoCubitError>()],
    );

    // Mutation operations — they emit an error state when the use case fails,
    // but stay silent (no new state) on success because the stream will
    // deliver the updated list automatically.

    blocTest<TodoCubit, TodoCubitState>(
      'reports an error when adding a todo fails',
      build: () {
        when(() => usecases.addTodo(aTodo)).thenAnswer(
          (_) async => left(const AddTodoFailure(failureMessage: 'disk full')),
        );
        return TodoCubit(usecases: usecases);
      },
      act: (cubit) => cubit.addTodo(aTodo),
      expect: () => [const TodoCubitError('disk full')],
    );

    blocTest<TodoCubit, TodoCubitState>(
      'reports an error when updating a todo fails',
      build: () {
        when(() => usecases.updateTodo(aTodo)).thenAnswer(
          (_) async =>
              left(const UpdateTodoFailure(failureMessage: 'write error')),
        );
        return TodoCubit(usecases: usecases);
      },
      act: (cubit) => cubit.updateTodo(aTodo),
      expect: () => [const TodoCubitError('write error')],
    );

    blocTest<TodoCubit, TodoCubitState>(
      'reports an error when deleting a todo fails',
      build: () {
        when(() => usecases.deleteTodo(aTodo.id!)).thenAnswer(
          (_) async =>
              left(const DeleteTodoFailure(failureMessage: 'not found')),
        );
        return TodoCubit(usecases: usecases);
      },
      act: (cubit) => cubit.deleteTodo(aTodo.id),
      expect: () => [const TodoCubitError('not found')],
    );

    // Lifecycle: the cubit must not leak the stream subscription.
    test('cancels the database subscription when closed', () async {
      final cubit = TodoCubit(usecases: usecases);
      expect(todosController.hasListener, isTrue);

      await cubit.close();

      expect(todosController.hasListener, isFalse);
    });
  });
}
