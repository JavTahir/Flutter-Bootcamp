import 'package:flutter/material.dart';

//a stateless widget as there is no change in its state

class ToDoItem extends StatelessWidget {
  //for values to pass in constructor first we have to initialize it
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  /*then after initializing set these as a parameter in constructor as shown below,so that whenever
  the constructor is called the values required are passed to constructor and are set in widget where
  required*/
  ToDoItem(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Container(
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            Checkbox(value: taskCompleted, onChanged: onChanged),
            //taskname
            Text(taskName)
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
