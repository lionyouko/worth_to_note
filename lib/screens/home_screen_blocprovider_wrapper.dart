import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worth_to_note/di/service_locator.dart';
import 'package:worth_to_note/feature_todos/presentation/cubits/todo_cubit.dart';

class HomeScreenBlocProviderWrapper extends StatelessWidget {
  final Widget child;

  const HomeScreenBlocProviderWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: sl<TodoCubit>(),
      child: child,
    );
  }
}
