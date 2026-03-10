import 'package:flutter/material.dart';
import 'package:worth_to_note/di/service_locator.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo_entity.dart';
import 'package:worth_to_note/feature_todos/presentation/cubits/todo_cubit.dart';

class AddTodoDialogWidget extends StatefulWidget {
  final BuildContext externalContext;
  const AddTodoDialogWidget({
    super.key,
    required this.externalContext,
  });

  @override
  State<AddTodoDialogWidget> createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  late final TextEditingController newAdviceTitleTextEditingController;
  late final TextEditingController newAdviceDescriptionTextEditingController;

  @override
  void initState() {
    super.initState();
    newAdviceTitleTextEditingController = TextEditingController();
    newAdviceDescriptionTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    newAdviceTitleTextEditingController.dispose();
    newAdviceDescriptionTextEditingController.dispose();
    super.dispose();
  }

  void _addTodo() {
    final title = newAdviceTitleTextEditingController.text.trim();
    if (title.isEmpty) {
      ScaffoldMessenger.of(widget.externalContext).showSnackBar(
        const SnackBar(content: Text('Title cannot be empty')),
      );
      return;
    }

    sl<TodoCubit>().addTodo(
      TodoEntity(
        title: title,
        description: newAdviceDescriptionTextEditingController.text.trim(),
        isDone: false,
        createdAt: DateTime.now(),
      ),
    );

    Navigator.of(widget.externalContext).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Add New Todo Note',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            TextField(
              controller: newAdviceTitleTextEditingController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: newAdviceDescriptionTextEditingController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(widget.externalContext).pop(),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: _addTodo,
                  child: const Text('Add'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
