import 'package:flutter/material.dart';

class Tilething extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxstate;
  final Function longpress;
  Tilething(
      {this.isChecked, this.taskTitle, this.checkboxstate, this.longpress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longpress,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.green,
          onChanged: checkboxstate,
        ));
  }
}
