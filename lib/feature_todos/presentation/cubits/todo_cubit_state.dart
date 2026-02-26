import 'package:equatable/equatable.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo.dart';

sealed class TodoCubitState extends Equatable {
  const TodoCubitState();

  @override
  List<Object?> get props => [];
}

class TodoCubitInitial extends TodoCubitState {
  const TodoCubitInitial();
}

class TodoCubitLoading extends TodoCubitState {
  const TodoCubitLoading();
}

class TodoCubitLoaded extends TodoCubitState {
  final List<Todo>? todos;

  const TodoCubitLoaded({this.todos});
}

class TodoCubitError extends TodoCubitState {
  final String message;

  const TodoCubitError(this.message);
}
