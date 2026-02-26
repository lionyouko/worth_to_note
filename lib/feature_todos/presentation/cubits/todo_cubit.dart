import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo.dart';
import 'package:worth_to_note/feature_todos/presentation/cubits/todo_cubit_state.dart';

class TodoCubit extends Cubit<TodoCubitState> {
  TodoCubit() : super(const TodoCubitInitial());

  void listenTodos() {
    emit(const TodoCubitLoading());
    try {
      // Simulate fetching todos
      Future.delayed(const Duration(seconds: 2), () {
        final List<Todo> todos = [
          // Simulated list of todos
        ];
        emit(TodoCubitLoaded(todos: todos));
      });
    } catch (e) {
      emit(TodoCubitError(e.toString()));
    }
  }
}
