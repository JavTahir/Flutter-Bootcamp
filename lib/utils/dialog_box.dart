import 'package:flutter/material.dart';
import 'package:flutter_project/utils/button.dart';

class DialogBox extends StatelessWidget {
  VoidCallback onSave;
  VoidCallback onCancel;
  final controller;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Add New Task"),
          ),
          Row(
            children: [
              MyButton(text: "Save", onPressed: onSave),
              SizedBox(
                width: 8.0,
              ),
              MyButton(text: "Cancel", onPressed: onCancel)
            ],
          ),
        ]),
      ),
    );
  }
}
