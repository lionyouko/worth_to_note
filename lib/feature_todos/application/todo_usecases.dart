import 'package:dartz/dartz.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo_entity.dart';
import 'package:worth_to_note/feature_todos/domain/failures/add_todo_failure.dart';
import 'package:worth_to_note/feature_todos/domain/failures/delete_todo_failure.dart';
import 'package:worth_to_note/feature_todos/domain/failures/todo_listen_failure.dart';
import 'package:worth_to_note/feature_todos/domain/failures/update_todo_failure.dart';
import 'package:worth_to_note/feature_todos/domain/repositories/todo_local_repository.dart';

class TodoUsecases {
  final TodoLocalRepository repository;

  TodoUsecases(this.repository);

  Stream<Either<TodoListenFailure, List<TodoEntity>>> listenTodos() {
    return repository.listenTodos();
  }

  Future<Either<AddTodoFailure, void>> addTodo(TodoEntity todo) async {
    return await repository.addTodo(todo);
  }

  Future<Either<UpdateTodoFailure, void>> updateTodo(TodoEntity todo) async {
    return await repository.updateTodo(todo);
  }

  Future<Either<DeleteTodoFailure, void>> deleteTodo(int? id) async {
    if (id == null) {
      return left(DeleteTodoFailure(failureMessage: 'Invalid ID'));
    }
    return await repository.deleteTodo(id);
  }
}
