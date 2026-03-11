import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worth_to_note/feature_todos/domain/failures/todo_failure.dart';

part 'update_todo_failure.freezed.dart';

const kUpdateTodoFailureMessage =
    'Failed to update the todo. Please try again.';

@freezed
sealed class UpdateTodoFailure with _$UpdateTodoFailure implements TodoFailure {
  const factory UpdateTodoFailure({
    @Default(kUpdateTodoFailureMessage) String failureMessage,
  }) = _UpdateTodoFailure;
}
