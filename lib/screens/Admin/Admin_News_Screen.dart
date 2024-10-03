// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:astro_app/utils/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AdminNewsScreen extends StatelessWidget {
  const AdminNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Title",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 5),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10, // Reduced height
                  horizontal: 10,
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Date",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 5),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.calendar_today), // Date icon
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10, // Reduced height
                  horizontal: 10,
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Image",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 5),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.image), // Image icon
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10, // Reduced height
                  horizontal: 10,
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Description",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 5),
            TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Write here..',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              // width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 140),
                child: ElevatedButton(
                  onPressed: () {
                    // Add your action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: PrimaryColor,
                    padding: EdgeInsets.symmetric(
                        vertical: 10), // Adjust the padding
                  ),
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
