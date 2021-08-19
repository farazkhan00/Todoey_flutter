import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'Buy Tomato'),
    Task(name: 'Buy Cucumber'),
    Task(name: 'Buy Chillies')
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }

  void setTaskName(String newValue){
    _tasks.add(Task(name: newValue));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}