import 'package:flutter/material.dart';

///////////////////////////////using CircleAvatar and Alignment widget////////////////////////////////

class AvatarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Title',
            style: TextStyle(fontFamily: 'FontMain'),
          ), //use of customfonts as well
        ),
        body: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage("assets/images/logo.jpg"),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
