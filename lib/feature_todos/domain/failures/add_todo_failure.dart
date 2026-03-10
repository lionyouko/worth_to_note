import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worth_to_note/feature_todos/domain/failures/todo_failure.dart';

part 'add_todo_failure.freezed.dart';

@freezed
sealed class AddTodoFailure with _$AddTodoFailure implements TodoFailure {
  static const String kAddTodoFailureMessage =
      'Failed to add the todo. Please try again.';

  const factory AddTodoFailure({
    @Default(kAddTodoFailureMessage) String failureMessage,
  }) = _AddTodoFailure;
}
