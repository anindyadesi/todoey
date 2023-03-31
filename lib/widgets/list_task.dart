import 'package:flutter/material.dart';


class ListTask extends StatelessWidget {
  final String taskName;
  final bool toggle;
  final Function toggleDoneCallback;

  ListTask({required this.taskName, required this.toggle
    ,required this.toggleDoneCallback});


  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(taskName,
          style: TextStyle(
              decoration: toggle ? TextDecoration.lineThrough : null),
        ),
        value: toggle,
        onChanged: (bool? val) => toggleDoneCallback(),
    );
  }


}

