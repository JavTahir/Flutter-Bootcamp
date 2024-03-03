import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
        ),
        body: const Center(
          child: FaIcon(
            FontAwesomeIcons.airbnb,
            color: Colors.purple,
            size: 50,
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
