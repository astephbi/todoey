import 'package:flutter/material.dart';
import 'package:todoey/models/tasks.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Tasks> tasks = [
    Tasks(name: 'Buy Milk'),
    Tasks(name: 'Buy Orange'),
    Tasks(name: 'Sell Money'),
    Tasks(name: 'Buy Orange'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          onToggleCheckbox: (checkBoxState) {
            setState(
              () {
                tasks[index].toggleDone();
              },
            );
          },
        );
      },
    );
  }
}
