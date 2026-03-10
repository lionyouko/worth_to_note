import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worth_to_note/feature_todos/presentation/cubits/todo_cubit.dart';
import 'package:worth_to_note/feature_todos/presentation/cubits/todo_cubit_state.dart';
import 'package:worth_to_note/feature_todos/presentation/widgets/todo_list_widget.dart';

class TodoListBlocBuilderWrapperWidget extends StatelessWidget {
  const TodoListBlocBuilderWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoCubit, TodoCubitState>(
      builder: (context, state) {
        if (state is TodoCubitInitial) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2.0,
              color: Colors.blue,
            ),
          );
        } else if (state is TodoCubitLoaded) {
          return TodoListWidget(todos: state.todos);
        } else if (state is TodoCubitError) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return const Center(
            child: Column(
              children: [
                Text(
                    'An error happened while loading todos. Please open the page again.'),
              ],
            ),
          );
        }
      },
    );
  }
}
