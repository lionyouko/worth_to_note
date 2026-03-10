import 'package:dartz/dartz.dart';
import 'package:worth_to_note/feature_todos/data/datasources/local_isar_datasource.dart';
import 'package:worth_to_note/feature_todos/data/mappers/todo_mapper.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo_entity.dart';
import 'package:worth_to_note/feature_todos/domain/failures/add_todo_failure.dart';
import 'package:worth_to_note/feature_todos/domain/failures/delete_todo_failure.dart';
import 'package:worth_to_note/feature_todos/domain/failures/todo_listen_failure.dart';
import 'package:worth_to_note/feature_todos/domain/failures/update_todo_failure.dart';
import 'package:worth_to_note/feature_todos/domain/repositories/todo_local_repository.dart';

class TodoLocalRepositoryImpl implements TodoLocalRepository {
  final LocalIsarDatasource datasource;

  TodoLocalRepositoryImpl({required this.datasource});

  @override
  Stream<Either<TodoListenFailure, List<TodoEntity>>> listenTodos() async* {
    try {
      await for (final todos in datasource.listenTodos()) {
        yield right(todos
            .map((todo) => TodoMapper.fromIsarModelToEntity(todo))
            .toList());
      }
    } catch (e) {
      yield left(TodoListenFailure(failureMessage: e.toString()));
    }
  }

  @override
  Future<Either<AddTodoFailure, void>> addTodo(TodoEntity todo) async {
    try {
      await datasource.addTodo(TodoMapper.fromEntityToIsarModel(todo));
      return right(null);
    } catch (e) {
      return left(AddTodoFailure(failureMessage: e.toString()));
    }
  }

  @override
  Future<Either<UpdateTodoFailure, void>> updateTodo(TodoEntity todo) async {
    try {
      await datasource.updateTodo(TodoMapper.fromEntityToIsarModel(todo));
      return right(null);
    } catch (e) {
      return left(UpdateTodoFailure(failureMessage: e.toString()));
    }
  }

  @override
  Future<Either<DeleteTodoFailure, void>> deleteTodo(int id) async {
    try {
      await datasource.deleteTodo(id);
      return right(null);
    } catch (e) {
      return left(DeleteTodoFailure(failureMessage: e.toString()));
    }
  }
}
