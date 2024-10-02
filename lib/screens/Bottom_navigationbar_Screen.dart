// ignore_for_file: prefer_const_constructors

import 'package:astro_app/screens/Admin_Screen.dart';
import 'package:astro_app/screens/HomeScreen.dart';
import 'package:astro_app/screens/News_Screen.dart';
import 'package:astro_app/screens/Profile/Profile_Screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    NewsScreen(),
    AdminScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Set to fixed to remove animation
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_outlined),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.admin_panel_settings),
            label: 'Admin',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black, // Color for the selected item
        unselectedItemColor: Colors.black45, // Color for the non-selected items
        iconSize: 30,
        selectedLabelStyle: TextStyle(
          fontSize: 14, // Font size for the selected item label
          fontWeight:
              FontWeight.bold, // Font weight for the selected item label
          color: Colors.black, // Text color for the selected item label
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 13, // Font size for the non-selected item label
          color: Colors.black45, // Text color for the non-selected item label
        ),
        onTap: _onItemTapped,
      ),
    );
  }
}
