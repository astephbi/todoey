import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //data: TaskData(),
      create: (context) {},
      builder: (context, child) => TaskData(),
      child: MaterialApp(
        title: 'To do App',
        debugShowCheckedModeBanner: false,
        home: const TodoList(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red),
        ),
      ),
    );
  }
}
