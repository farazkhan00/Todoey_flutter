import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';

class AddTaskScreen extends StatelessWidget {


  // final Function textfieldCallback;
  // AddTaskScreen(this.textfieldCallback);

  @override
  Widget build(BuildContext context) {

    String textFieldValue;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                ),
              ),
            TextField(
              // decoration: InputDecoration(
              //   contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              //   hintText: 'Enter task here'
              // ),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue){
                textFieldValue = newValue;
              },

            ),
            ElevatedButton(
              onPressed: () {
                //textfieldCallback(textFieldValue);
                print(textFieldValue);
                Provider.of<TaskData>(context, listen: false).setTaskName(textFieldValue);
                Navigator.pop(context);

              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
