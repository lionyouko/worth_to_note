import 'package:flutter/material.dart';
import 'package:worth_to_note/di/service_locator.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo_entity.dart';
import 'package:worth_to_note/feature_todos/presentation/cubits/todo_cubit.dart';

class TodoListItemWidget extends StatelessWidget {
  final TodoEntity? todo;

  const TodoListItemWidget({super.key, this.todo});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(todo?.id.toString() ?? ''),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      onDismissed: (direction) {
        sl<TodoCubit>().deleteTodo(todo?.id);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Todo deleted')),
        );
      },
      child: ListTile(
        title: Text(todo?.title ?? 'No Title'),
        subtitle: Text(todo?.description ?? 'No Description'),
        trailing: Checkbox(
          value: todo?.isDone ?? false,
          onChanged: (value) {
            if (todo?.id == null) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Unable to update: missing id')),
              );
              return;
            }
            sl<TodoCubit>().updateTodo(
              TodoEntity(
                id: todo!.id,
                title: todo!.title,
                description: todo!.description,
                isDone: value ?? false,
                createdAt: todo!.createdAt,
              ),
            );
          },
        ),
      ),
    );
  }
}
