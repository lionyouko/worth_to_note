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
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 205, 196, 196),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          title: Text(todo?.title ?? 'No Title',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: todo?.isDone == true ? Colors.grey : Colors.blueAccent,
                decoration: todo?.isDone == true
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              )),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(todo?.description ?? 'No Description'),
              Text(
                  '${todo != null ? todo!.createdAt?.toLocal().toString().split('.').first : 'N/A'}',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]))
            ],
          ),
          trailing: Checkbox(
            value: todo?.isDone ?? false,
            checkColor: Colors.white,
            activeColor: Colors.blueAccent,
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
      ),
    );
  }
}
