import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({this.addcallback});
  final Function addcallback;
  String newtasktitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                "Add Task",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                ),
              ),
            ),
            TextField(
              cursorHeight: 30,
              cursorColor: Colors.green,
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue) {
                newtasktitle = newValue;
              },
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              color: Colors.green,
              onPressed: () {
                addcallback(newtasktitle);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    "Add",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
