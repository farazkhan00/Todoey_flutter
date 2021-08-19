import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({this.taskTitle, this.isChecked, this.checkboxCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
       value: isChecked,
       onChanged: checkboxCallback,


     )
    );
  }
}

// TaskCheckbox(
// checked: isChecked,
// toggleCheckboxState: (bool checkboxState) {
// setState(() {
// isChecked = checkboxState;
// });
// }),

// class TaskCheckbox extends StatelessWidget {
//   final bool checked;
//   final Function toggleCheckboxState;
//
//   TaskCheckbox({this.checked, this.toggleCheckboxState});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checked,
//       onChanged: toggleCheckboxState,
//     );
//   }
// }
