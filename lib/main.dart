import 'package:flutter/material.dart';
import 'package:worth_to_note/app.dart';
import 'package:worth_to_note/di/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init();

  runApp(const MainApp());
}
