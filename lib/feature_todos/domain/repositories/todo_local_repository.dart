import 'package:dartz/dartz.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo_entity.dart';
import 'package:worth_to_note/feature_todos/domain/failures/add_todo_failure.dart';
import 'package:worth_to_note/feature_todos/domain/failures/delete_todo_failure.dart';
import 'package:worth_to_note/feature_todos/domain/failures/todo_listen_failure.dart';
import 'package:worth_to_note/feature_todos/domain/failures/update_todo_failure.dart';

abstract class TodoLocalRepository {
  Stream<Either<TodoListenFailure, List<TodoEntity>>> listenTodos();
  Future<Either<AddTodoFailure, void>> addTodo(TodoEntity todo);
  Future<Either<UpdateTodoFailure, void>> updateTodo(TodoEntity todo);
  Future<Either<DeleteTodoFailure, void>> deleteTodo(int id);
}
