import 'package:flutter/material.dart';
import 'package:flutter_project/utils/todo_item.dart';

/*todo page is a stateful widget as everytime an item is added on this page resulting
in change in state of this page*/

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

/*this ToDoPageState class is the class in which the state changing functionality is managed*/

class _ToDoPageState extends State<ToDoPage> {
  //this is a list of todo-items created using which the todo_item widget is created
  List toDoList = [
    ["Make Tutorial", false],
    ["Do Exercise", false]
  ];

  /*this is the function which is called on onChange to set the value of checkbox
  either true or false
  setState: is used everytime when we want the change to be refleced on Screen.It rebuilds the widget again
  to show that change */
  void checkBoxChanged(int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); //how to get theme from parent widget
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: Center(
          child: Text("TO DO"),
        ),
      ),

      /*ListView.builder is when we have to dynamically create items not knowing their length.It just
      acts as loop such that till the length of itemCount ,it creates the item specified in itemBuilder 
      that no of times*/
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          /*calling our custom widget constructor and just passing the values to create that widget everytime
          accordingly*/
          return ToDoItem(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(index),
          );
        },
      ),
    );
  }
}
