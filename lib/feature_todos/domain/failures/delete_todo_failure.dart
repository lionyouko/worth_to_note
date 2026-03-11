import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worth_to_note/feature_todos/domain/failures/todo_failure.dart';

part 'delete_todo_failure.freezed.dart';

const kDeleteTodoFailureMessage =
    'Failed to delete the todo. Please try again.';

@freezed
sealed class DeleteTodoFailure with _$DeleteTodoFailure implements TodoFailure {
  const factory DeleteTodoFailure({
    @Default(kDeleteTodoFailureMessage) String failureMessage,
  }) = _DeleteTodoFailure;
}
