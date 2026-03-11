import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo.dart';

part 'todo_entity.freezed.dart';

@freezed
abstract class TodoEntity with _$TodoEntity implements Todo {
  const factory TodoEntity({
    int? id,
    String? title,
    String? description,
    bool? isDone,
    DateTime? createdAt,
  }) = _TodoEntity;
}
