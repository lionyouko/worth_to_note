import 'package:flutter/material.dart';
import 'package:worth_to_note/screens/home_screen.dart';
import 'package:worth_to_note/screens/home_screen_blocprovider_wrapper.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: HomeScreenBlocProviderWrapper(
      child: HomeScreen(),
    ));
  }
}
