import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            color: Colors.purple,
            child: const Row(
              children: <Widget>[
                Text(
                  "flight ",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Islamabad, Pk sharp ",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
