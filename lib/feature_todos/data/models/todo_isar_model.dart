import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:worth_to_note/feature_todos/data/models/todo_model.dart';

part 'todo_isar_model.g.dart';

@JsonSerializable()
@Collection(inheritance: false)
class TodoIsarModel extends Equatable implements TodoModel {
  @override
  final Id? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final bool? isDone;
  @override
  final DateTime? createdAt;

  const TodoIsarModel({
    this.id,
    required this.title,
    required this.description,
    required this.isDone,
    this.createdAt,
  });

  @ignore
  @override
  List<Object?> get props => [id, title, description, isDone, createdAt];

  @override
  String toString() {
    return 'TodoIsarModel(id: $id, title: $title, description: $description, isDone: $isDone, createdAt: $createdAt)';
  }

  TodoIsarModel copyWith({
    Id? id,
    String? title,
    String? description,
    bool? isDone,
    DateTime? createdAt,
  }) {
    return TodoIsarModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isDone: isDone ?? this.isDone,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
