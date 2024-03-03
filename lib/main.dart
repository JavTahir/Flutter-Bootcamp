// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_project/NavigatorRouting/second_screen.dart';
import 'package:flutter_project/NavigatorRouting/firstt_screen.dart';
import 'package:flutter_project/implementation.dart';
import 'package:flutter_project/widgets/circle_avatar.dart';
import 'package:flutter_project/widgets/icons.dart';
import 'package:flutter_project/widgets/image_widgets.dart';
import 'package:flutter_project/widgets/column_widget.dart';
import 'package:flutter_project/widgets/material3.dart';
import 'package:flutter_project/widgets/position_widget.dart';
import 'package:flutter_project/widgets/text_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PositionWidget(),
    );
  }
}
