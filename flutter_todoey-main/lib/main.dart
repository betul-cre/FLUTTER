import 'package:flutter/material.dart';
import 'package:flutter_app_management/tasks/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app_management/tasks/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}
