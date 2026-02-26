import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (externalContext) {
        return AlertDialog(
          title: const Text('Add New Todo Note',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
          content: Column(
            children: [
              TextField(
                controller: newAdviceTitleTextEditingController,
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: newAdviceDescriptionTextEditingController,
                decoration: const InputDecoration(labelText: 'Description'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Handle add todo action
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
