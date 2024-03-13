import 'package:flutter/material.dart';
import 'package:flutter_project/pages/second_screen.dart';

//Drawer implementation in this as well

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
                  Navigator.pushNamed(
                      context, '/secondpage'); //for making it simple and easy
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return SecondScreen();
                  // }));
                },
                child: Text("press button"))
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[200],
        child: Column(
          children: [
            DrawerHeader(
                //here mainly comes the logo
                child: Icon(
              Icons.favorite,
              size: 48,
            )),

            //home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () => {
                //pop drawer first
                Navigator.pop(context)
                //navigate to some page
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
            )
          ],
        ),
      ),
    );
  }
}
