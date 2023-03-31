import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              color: Colors.lightBlueAccent,
              //fontWeight: FontWeight.w700
            ),),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              decoration: InputDecoration(
                fillColor: Colors.lightBlueAccent
              ),
            ),
            SizedBox(height: 10,),
            TextButton(onPressed: (){}, child: Text('Add', style: TextStyle(
              color: Colors.white
            ),),style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent
            ),)

          ],
        ),
      ),
    );
  }
}
