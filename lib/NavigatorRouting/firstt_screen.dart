import 'package:flutter/material.dart';
import 'package:flutter_project/NavigatorRouting/second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "first Page",
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 11),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SecondScreen();
                  }));
                },
                child: Text("press button"))
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
