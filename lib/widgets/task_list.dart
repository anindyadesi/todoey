import 'package:flutter/material.dart';

import '../models/task.dart';
import 'list_task.dart';


class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(taskTitle: 'buy milk'),
    Task(taskTitle: 'buy bread'),
    Task(taskTitle: 'buy eggs'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        // itemBuilder: (context,index){},
        itemBuilder: (context, index) => ListTask(
          taskName: tasks[index].taskTitle,
          toggle: tasks[index].isDone,
          toggleDoneCallback: (){
            setState(() {
              tasks[index].toggleDone();
            });
          },
        )
    );
  }
}