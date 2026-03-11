import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worth_to_note/feature_todos/domain/failures/todo_failure.dart';

part 'todo_listen_failure.freezed.dart';

const kTodoListenFailureMessage =
    'Failed to listen to todos. Please try again.';

@freezed
sealed class TodoListenFailure with _$TodoListenFailure implements TodoFailure {
  const factory TodoListenFailure({
    @Default(kTodoListenFailureMessage) String failureMessage,
  }) = _TodoListenFailure;
}
