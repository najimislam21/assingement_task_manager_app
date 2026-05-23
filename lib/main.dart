import 'package:assingment_task_manager_app/screens/task_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To-Do UI',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF5F7FB),
        fontFamily: 'Roboto',
      ),
      home: const TaskListScreen(),
    );
  }
}