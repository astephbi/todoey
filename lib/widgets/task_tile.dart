import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('New task'),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {},
      ),
    );
  }
}
