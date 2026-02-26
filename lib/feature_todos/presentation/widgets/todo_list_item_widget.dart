import 'package:flutter/material.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo.dart';

class TodoListItemWidget extends StatelessWidget {
  final Todo? todo;

  const TodoListItemWidget({super.key, this.todo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo?.title ?? 'No Title'),
      subtitle: Text(todo?.description ?? 'No Description'),
      trailing: Checkbox(
        value: todo?.isDone ?? false,
        onChanged: (value) {
          // Handle checkbox change
        },
      ),
    );
  }
}
