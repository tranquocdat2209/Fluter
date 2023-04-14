import 'package:flutter/material.dart';

Widget StickyFooter() => BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(Icons.home),
          // title: Text('Home'),
          backgroundColor: Colors.green
      ),

    ]
);