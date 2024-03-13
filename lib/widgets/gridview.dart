import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  var arrcolors = [
    Colors.red,
    Colors.amber,
    Colors.green,
    Colors.black,
    Colors.blue,
    Colors.pink,
    Colors.grey,
    Colors.orange
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Grid View"),
          ),
          body: GridView.builder(
              itemCount: arrcolors.length,
              //how many you want in each row
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: ((context, index) => Container(
                    color: arrcolors[index],
                    margin: EdgeInsets.all(
                        8), //setting the margin to give spaces around
                  )))),
    );
  }
}
