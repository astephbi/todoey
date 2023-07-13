import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function(bool?)? onToggleCheckbox;

  const TaskTile({
    Key? key,
    required this.taskTitle,
    required this.isChecked,
    required this.onToggleCheckbox,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: onToggleCheckbox,
      ),
    );
  }
}
