// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:astro_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AdminUserScreen extends StatelessWidget {
  const AdminUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample user data
    final List<Map<String, String>> users = [
      {'name': 'Akash Gupta', 'image': 'assets/images/User.png'},
      {'name': 'Jeewan Chaudhary', 'image': 'assets/images/User.png'},
      {'name': 'Prasant Jha', 'image': 'assets/images/User.png'},
      {'name': 'Akash Gupta', 'image': 'assets/images/User.png'},
      {'name': 'Jeewan Chaudhary', 'image': 'assets/images/User.png'},
      {'name': 'Prasant Jha', 'image': 'assets/images/User.png'},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        // title: Text("Users"),
      ),
      body: SingleChildScrollView(
        // Make the body scrollable
        padding: const EdgeInsets.only(top: 50.0, left: 25, right: 25),
        child: Column(
          children: users.map((user) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                        image: DecorationImage(
                          image: AssetImage(user['image']!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 16), // Space between the image and text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user['name']!,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20), // Add vertical space between rows
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
