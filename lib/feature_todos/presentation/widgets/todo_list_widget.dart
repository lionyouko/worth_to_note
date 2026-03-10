import 'package:flutter/material.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo_entity.dart';
import 'package:worth_to_note/feature_todos/presentation/widgets/todo_list_item_widget.dart';

class TodoListWidget extends StatelessWidget {
  final List<TodoEntity>? todos;

  const TodoListWidget({
    super.key,
    this.todos,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos?.length ?? 0,
      padding: const EdgeInsets.all(8.0),
      itemBuilder: (context, index) {
        return TodoListItemWidget(todo: todos?[index]);
      },
    );
  }
}
