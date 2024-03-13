// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_project/pages/bottomNavigation.dart';
import 'package:flutter_project/pages/second_screen.dart';
import 'package:flutter_project/pages/firstt_screen.dart';
import 'package:flutter_project/implementation.dart';
import 'package:flutter_project/widgets/circle_avatar.dart';
import 'package:flutter_project/widgets/gestureDetector.dart';
import 'package:flutter_project/widgets/gridview.dart';
import 'package:flutter_project/widgets/icons.dart';
import 'package:flutter_project/widgets/image_widgets.dart';
import 'package:flutter_project/widgets/column_widget.dart';
import 'package:flutter_project/widgets/more_basics_widgets.dart';
import 'package:flutter_project/widgets/material3.dart';
import 'package:flutter_project/widgets/position_widget.dart';
import 'package:flutter_project/widgets/Appbar.dart';
import 'package:flutter_project/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: bottomNavigation(),
      routes: {
        '/secondpage': (context) => SecondScreen()
      }, //for handling multiple roots
    );
  }
}
