// lib/screens/splash_screen.dart
// ignore_for_file: prefer_const_constructors, unused_import

// import 'package:astro_app/homepage.dart';
import 'package:astro_app/screens/Bottom_navigationbar_Screen.dart';
import 'package:astro_app/screens/HomeScreen.dart';
import 'package:astro_app/signup_page.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_pictures.dart';
// Import the next screen you want to navigate to

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after a delay
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignupPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: Stack(
        children: [
          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Akash Vaani",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20), // Spacing between text and image
                Image.asset(
                  SplashImage, // Ensure SplashImage is a string with the correct path
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
          // Text positioned at the bottom center
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Developed by APJ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white, // Match the color with your design
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
