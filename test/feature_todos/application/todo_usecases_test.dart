import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:worth_to_note/feature_todos/application/todo_usecases.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo_entity.dart';
import 'package:worth_to_note/feature_todos/domain/failures/todo_listen_failure.dart';
import 'package:worth_to_note/feature_todos/domain/repositories/todo_local_repository.dart';

class _MockTodoLocalRepository extends Mock implements TodoLocalRepository {}

void main() {
  group('TodoUsecases', () {
    late _MockTodoLocalRepository repository;
    late TodoUsecases usecases;

    final aTodo = TodoEntity(
      id: 1,
      title: 'Buy groceries',
      description: 'Milk and eggs',
      isDone: false,
      createdAt: DateTime(2023, 1, 1),
    );

    setUp(() {
      repository = _MockTodoLocalRepository();
      usecases = TodoUsecases(repository);
    });

    test('forwards the live todos stream straight from the repository',
        () async {
      final controller =
          StreamController<Either<TodoListenFailure, List<TodoEntity>>>();
      when(() => repository.listenTodos()).thenAnswer((_) => controller.stream);

      final received = <List<TodoEntity>>[];
      final sub = usecases.listenTodos().listen(
            (event) => event.fold((_) {}, received.add),
          );

      controller.add(right([aTodo]));
      await Future<void>.delayed(const Duration(milliseconds: 10));

      expect(received, [
        [aTodo]
      ]);

      await sub.cancel();
      await controller.close();
    });

    test('adds a todo through the repository', () async {
      when(() => repository.addTodo(aTodo))
          .thenAnswer((_) async => right(null));

      final result = await usecases.addTodo(aTodo);

      expect(result.isRight(), isTrue);
    });

    test('updates a todo through the repository', () async {
      when(() => repository.updateTodo(aTodo))
          .thenAnswer((_) async => right(null));

      final result = await usecases.updateTodo(aTodo);

      expect(result.isRight(), isTrue);
    });

    // This guard lives in the use case itself — not in the repository.
    test('rejects a delete when the todo has no id yet', () async {
      final result = await usecases.deleteTodo(null);

      result.fold(
        (failure) => expect(failure.failureMessage, 'Invalid ID'),
        (_) => fail('Expected a failure, not success'),
      );
      verifyNever(() => repository.deleteTodo(any()));
    });

    test('deletes a todo through the repository when the id is valid',
        () async {
      when(() => repository.deleteTodo(aTodo.id!))
          .thenAnswer((_) async => right(null));

      final result = await usecases.deleteTodo(aTodo.id);

      expect(result.isRight(), isTrue);
      verify(() => repository.deleteTodo(aTodo.id!)).called(1);
    });
  });
}
