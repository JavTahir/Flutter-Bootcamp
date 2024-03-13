import 'package:flutter/material.dart';

class LayoutsWidget extends StatelessWidget {
  // var arrcolors = [
  //   Colors.red,
  //   Colors.amber,
  //   Colors.green,
  //   Colors.black,
  //   Colors.blue,
  //   Colors.pink,
  //   Colors.grey,
  //   Colors.orange
  // ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My App Bar'),
        backgroundColor: Colors.orange[300],
        elevation: 10.0, //not working in this version

        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
      ),
      drawer: Drawer(),
      body: ListView(
        children: [
          Container(
            height: 300,
            color: const Color.fromARGB(255, 188, 105, 202),
          ),
          Container(
            height: 350,
            color: Color.fromARGB(255, 74, 33, 81),
          ),
          Container(
            height: 350,
            color: Color.fromARGB(255, 93, 84, 95),
          ),
        ],
      ),
    ));
  }
}
