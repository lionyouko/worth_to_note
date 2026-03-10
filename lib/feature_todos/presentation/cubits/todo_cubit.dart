import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worth_to_note/feature_todos/application/todo_usecases.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo_entity.dart';
import 'package:worth_to_note/feature_todos/domain/failures/todo_failure.dart';
import 'package:worth_to_note/feature_todos/presentation/cubits/todo_cubit_state.dart';

class TodoCubit extends Cubit<TodoCubitState> {
  final TodoUsecases usecases;
  StreamSubscription<Either<TodoFailure, List<TodoEntity>>>? _subscription;

  TodoCubit({
    required this.usecases,
  }) : super(const TodoCubitInitial()) {
    listenTodos();
  }

  @override
  Future<void> close() {
    closesub();
    return super.close();
  }

  Future<void> closesub() async {
    _subscription?.cancel();
  }

  void listenTodos() {
    _subscription = usecases.listenTodos().listen(
      (todos) {
        todos.fold(
          (failure) {
            emit(TodoCubitError(failure.failureMessage));
          },
          (todos) {
            log('Stream emitted: $todos');
            emit(TodoCubitLoaded(todos: todos));
          },
        );
      },
      onError: (error) {
        emit(TodoCubitError(error.toString()));
      },
    );
  }

  Future<void> addTodo(TodoEntity todo) async {
    final result = await usecases.addTodo(todo);
    result.fold(
      (failure) {
        emit(TodoCubitError(failure.failureMessage));
      },
      (success) {},
    );
  }

  Future<void> updateTodo(TodoEntity todo) async {
    final result = await usecases.updateTodo(todo);
    result.fold(
      (failure) {
        emit(TodoCubitError(failure.failureMessage));
      },
      (success) {},
    );
  }

  Future<void> deleteTodo(int? id) async {
    final result = await usecases.deleteTodo(id);
    result.fold(
      (failure) {
        emit(TodoCubitError(failure.failureMessage));
      },
      (success) {},
    );
  }
}
