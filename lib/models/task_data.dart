import 'package:flutter/material.dart';
import 'package:todoey/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Tasks> tasks = [
    Tasks(name: 'Buy Milk'),
    Tasks(name: 'Buy Orange'),
    Tasks(name: 'Sell Money'),
    Tasks(name: 'Buy Orange'),
  ];
}
