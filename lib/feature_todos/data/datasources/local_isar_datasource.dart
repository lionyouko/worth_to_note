import 'package:isar/isar.dart';
import 'package:worth_to_note/feature_todos/data/exceptions/add_todo_exception.dart';
import 'package:worth_to_note/feature_todos/data/exceptions/delete_todo_exception.dart';
import 'package:worth_to_note/feature_todos/data/exceptions/listen_todo_exception.dart';
import 'package:worth_to_note/feature_todos/data/exceptions/update_todo_exception.dart';
import 'package:worth_to_note/feature_todos/data/models/todo_isar_model.dart';
import 'package:worth_to_note/services/isar_service.dart';

abstract class LocalIsarDatasource {
  Stream<List<TodoIsarModel>> listenTodos();
  Future<void> addTodo(TodoIsarModel todo);
  Future<void> updateTodo(TodoIsarModel todo);
  Future<void> deleteTodo(int id);
}

class LocalIsarDatasourceImpl implements LocalIsarDatasource {
  late Future<Isar> db;
  final IsarService isarService;

  LocalIsarDatasourceImpl({required this.isarService}) {
    db = isarService.openDB();
  }

  @override
  Stream<List<TodoIsarModel>> listenTodos() async* {
    final isar = await db;
    try {
      yield* isar.todoIsarModels
          .where()
          .sortByCreatedAtDesc()
          .watch(fireImmediately: true)
          .handleError((e) => throw ListenTodoException(e.toString()));
    } catch (e) {
      throw ListenTodoException(e.toString());
    }
  }

  @override
  Future<void> addTodo(TodoIsarModel todo) async {
    final isar = await db;
    try {
      await isar.writeTxn(() async {
        await isar.todoIsarModels.put(todo);
      });
    } catch (e) {
      throw AddTodoException(e.toString());
    }
  }

  @override
  Future<void> updateTodo(TodoIsarModel todo) async {
    final isar = await db;
    try {
      await isar.writeTxn(() async {
        await isar.todoIsarModels.put(todo);
      });
    } catch (e) {
      throw UpdateTodoException(e.toString());
    }
  }

  @override
  Future<void> deleteTodo(int id) async {
    final isar = await db;
    try {
      await isar.writeTxn(() async {
        await isar.todoIsarModels.delete(id);
      });
    } catch (e) {
      throw DeleteTodoException(e.toString());
    }
  }
}
