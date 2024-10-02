// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:astro_app/screens/EditProfileScreen.dart';
// import 'package:astro_app/Profile/EditProfileScreen.dart';
import 'package:astro_app/screens/Profile/EditProfileScreen.dart';
import 'package:astro_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(
                "assets/images/Profile.png",
                height: 90,
                width: 90,
              ),
              Text(
                'Akash Gupta',
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
              Text(
                "agupta@rku.ac.in",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Change',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Contact',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Text(
                    '+977982743829',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Country',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    'India',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'DOB',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    '24/7/2004',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Gender',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    'Male',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              SizedBox(
                height: 24,
              ),
              // Spacer(), // To push the button to the bottom
              ElevatedButton(
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
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20, // Add space below the button
              ),
            ],
          ),
        ),
      ),
    );
  }
}
