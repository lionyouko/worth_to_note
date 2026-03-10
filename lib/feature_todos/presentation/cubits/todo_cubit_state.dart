import 'package:equatable/equatable.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo_entity.dart';

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
  final List<TodoEntity>? todos;

  const TodoCubitLoaded({this.todos});

  @override
  List<Object?> get props => [todos];
}

class TodoCubitError extends TodoCubitState {
  final String message;

  const TodoCubitError(this.message);
}
