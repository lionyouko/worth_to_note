import 'package:worth_to_note/feature_todos/data/models/todo_concrete_model.dart';
import 'package:worth_to_note/feature_todos/data/models/todo_isar_model.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo_entity.dart';

abstract class TodoMapper {
  static TodoIsarModel fromEntityToIsarModel(TodoEntity todo) {
    return TodoIsarModel(
      id: todo.id,
      title: todo.title,
      description: todo.description,
      isDone: todo.isDone,
      createdAt: todo.createdAt,
    );
  }

  static TodoEntity fromIsarModelToEntity(TodoIsarModel model) {
    return TodoEntity(
      id: model.id,
      title: model.title,
      description: model.description,
      isDone: model.isDone,
      createdAt: model.createdAt,
    );
  }

  static TodoConcreteModel fromEntityToConcreteModel(TodoEntity entity) {
    return TodoConcreteModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      isDone: entity.isDone,
      createdAt: entity.createdAt,
    );
  }

  static TodoEntity fromConcreteModelToEntity(TodoConcreteModel model) {
    return TodoEntity(
      id: model.id,
      title: model.title,
      description: model.description,
      isDone: model.isDone,
      createdAt: model.createdAt,
    );
  }

  static TodoIsarModel fromConcreteModelToIsarModel(TodoConcreteModel model) {
    return TodoIsarModel(
      id: model.id,
      title: model.title,
      description: model.description,
      isDone: model.isDone,
      createdAt: model.createdAt,
    );
  }

  static TodoConcreteModel fromIsarModelToConcreteModel(TodoIsarModel model) {
    return TodoConcreteModel(
      id: model.id,
      title: model.title,
      description: model.description,
      isDone: model.isDone,
      createdAt: model.createdAt,
    );
  }
}
