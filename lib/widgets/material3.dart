import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';

Color brandColor = Color.fromARGB(255, 180, 98, 67); // secondary brand color

class ThemeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? dark) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              actions: const [Icon(Icons.more_vert)],
              actionsIconTheme: const IconThemeData(
                  // color: lightColorScheme.primary,
                  ),
              toolbarHeight: 50,
              toolbarOpacity: 0.5,
              title: Text('Title'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Login"),
                  ),
                  SizedBox(height: 16.0),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.login),
                    label: Text("Login"),
                  ),
                  SizedBox(height: 16.0),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text("Login"),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            drawer: Drawer(),
          ),
        );
      },
    );
  }
}
