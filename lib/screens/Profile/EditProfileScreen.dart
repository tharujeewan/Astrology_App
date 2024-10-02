// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:astro_app/utils/app_colors.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false, // Remove the default back button
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color: Colors.white), // Custom back button icon
          onPressed: () {
            Navigator.pop(context); // Navigate back when pressed
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              'Full Name',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Akash',
                  style: TextStyle(fontSize: 17),
                ),
                Icon(Icons.person),
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Contact',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '9836839404',
                  style: TextStyle(fontSize: 17),
                ),
                Icon(Icons.call),
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Country',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'India',
                  style: TextStyle(fontSize: 17),
                ),
                Icon(Icons.location_city),
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'DOB',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '24/7/2002',
                  style: TextStyle(fontSize: 17),
                ),
                Icon(Icons.date_range),
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Gender',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Male',
                  style: TextStyle(fontSize: 17),
                ),
                Icon(Icons.male),
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditProfileScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: PrimaryColor, // Button background color
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 13),
                ),
                child: Text(
                  'Save Changes',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
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
