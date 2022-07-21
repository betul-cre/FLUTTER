import 'package:flutter/material.dart';
import 'package:flutter_app_management/constant/listile.dart';

class Task {
  Task({this.isDone = false, this.name});
  final String name;
  bool isDone;

  void toggledDone() {
    isDone = !isDone;
  }

  void deletetask(Task task) {}
}

class ListThing extends StatefulWidget {
  final List<Task> task;
  ListThing(this.task);
  @override
  _ListThingState createState() => _ListThingState();
}

class _ListThingState extends State<ListThing> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Tilething(
          taskTitle: widget.task[index].name,
          isChecked: widget.task[index].isDone,
          checkboxstate: (checkBoxstate) {
            setState(() {
              widget.task[index].toggledDone();
            });
          },
        );
      },
      itemCount: widget.task.length,
    );
  }
}
