import 'package:flutter/material.dart';
import 'package:worth_to_note/feature_todos/presentation/widgets/add_todo_dialog_widget.dart';
import 'package:worth_to_note/feature_todos/presentation/widgets/todo_list_blocbuilder_wrapper_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Worth To Note App',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (externalContext) {
              return AddTodoDialogWidget(
                externalContext: externalContext,
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Center(
              child: Text(
                'Click on the + button to add a new todo',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: screenHeight * 0.6,
              child: TodoListBlocBuilderWrapperWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
