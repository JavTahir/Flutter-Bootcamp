import 'package:flutter/material.dart';

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
        body: Center(
          child: Container(
            width: 130,
            height: 130,
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
