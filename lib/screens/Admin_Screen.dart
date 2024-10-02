// ignore_for_file: prefer_const_constructors

import 'package:astro_app/screens/Admin/Admin_Dashboard_Screen.dart';
import 'package:astro_app/screens/Admin/Admin_News_Screen.dart';
import 'package:flutter/material.dart';
import 'package:astro_app/screens/Admin/Admin_User_Screen.dart';
import 'package:astro_app/screens/Admin/Admin_notification_Screen.dart';
import 'package:astro_app/utils/app_colors.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  int _selectedIndex = 0; // Track the currently selected index

  final List<Widget> _screens = [
    DashboardScreen(),
    AdminUserScreen(),
    AdminNotificationScreen(),
    AdminNewsScreen(), // Make sure this is added
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: PrimaryColor,
              ),
              child: Text(
                'Admin Panel',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context); // Close drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Users'),
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context); // Close drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context); // Close drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('News'),
              onTap: () {
                _onItemTapped(3); // Correct index for AdminNewsScreen
                Navigator.pop(context); // Close drawer
              },
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex], // Display the selected screen
    );
  }
}
