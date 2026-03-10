import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worth_to_note/feature_todos/data/models/todo_model.dart';

part 'todo_concrete_model.g.dart';

@JsonSerializable()
class TodoConcreteModel extends Equatable implements TodoModel {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final bool? isDone;
  @override
  final DateTime? createdAt;

  const TodoConcreteModel({
    this.id,
    this.title,
    this.description,
    this.isDone,
    this.createdAt,
  });

  factory TodoConcreteModel.fromJson(Map<String, dynamic> json) =>
      _$TodoConcreteModelFromJson(json);

  Map<String, dynamic> toJson() => _$TodoConcreteModelToJson(this);

  @override
  List<Object?> get props => [id, title, description, isDone, createdAt];

  @override
  bool? get stringify => true;

  TodoConcreteModel copyWith({
    int? id,
    String? title,
    String? description,
    bool? isDone,
    DateTime? createdAt,
  }) {
    return TodoConcreteModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isDone: isDone ?? this.isDone,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
