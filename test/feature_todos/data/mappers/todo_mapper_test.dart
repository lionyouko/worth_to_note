import 'package:flutter_test/flutter_test.dart';
import 'package:worth_to_note/feature_todos/data/mappers/todo_mapper.dart';
import 'package:worth_to_note/feature_todos/data/models/todo_concrete_model.dart';
import 'package:worth_to_note/feature_todos/data/models/todo_isar_model.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo_entity.dart';

void main() {
  group('TodoMapper', () {
    final entity = TodoEntity(
      id: 1,
      title: 'title',
      description: 'desc',
      isDone: true,
      createdAt: DateTime(2024, 1, 1),
    );

    final isarModel = TodoIsarModel(
      id: 1,
      title: 'title',
      description: 'desc',
      isDone: true,
      createdAt: DateTime(2024, 1, 1),
    );

    final concreteModel = TodoConcreteModel(
      id: 1,
      title: 'title',
      description: 'desc',
      isDone: true,
      createdAt: DateTime(2024, 1, 1),
    );

    test('entity <-> isar conversions', () {
      expect(TodoMapper.fromEntityToIsarModel(entity), isarModel);
      expect(TodoMapper.fromIsarModelToEntity(isarModel), entity);
    });

    test('entity <-> concrete conversions', () {
      expect(TodoMapper.fromEntityToConcreteModel(entity), concreteModel);
      expect(TodoMapper.fromConcreteModelToEntity(concreteModel), entity);
    });

    test('concrete <-> isar conversions', () {
      expect(TodoMapper.fromConcreteModelToIsarModel(concreteModel), isarModel);
      expect(TodoMapper.fromIsarModelToConcreteModel(isarModel), concreteModel);
    });
  });
}
