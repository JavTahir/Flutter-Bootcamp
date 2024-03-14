// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_project/pages/firstt_screen.dart';
import 'package:flutter_project/pages/second_screen.dart';

class bottomNavigation extends StatefulWidget {
  @override
  State<bottomNavigation> createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  //this keeps track of current page to display
  int _selectedIndex = 0;

  //method to update the selected Index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    //home page
    FirstScreen(),

    //profile page
    SecondScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: [
            //home
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

            //profile
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

            //settings
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ]),
    ));
  }
}
