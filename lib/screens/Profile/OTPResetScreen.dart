// ignore_for_file: prefer_const_constructors

import 'package:astro_app/screens/Profile/OtpVerificationScreen.dart';
import 'package:astro_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class OTPResetScreen extends StatefulWidget {
  @override
  _OTPResetScreenState createState() => _OTPResetScreenState();
}

class _OTPResetScreenState extends State<OTPResetScreen> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
                context); // Navigate back to the previous screen (LoginPage)
          },
        ),
        elevation: 0,
      ),
      body: Container(
        color: Color(0xFFF2D2D2),
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Avatar/Illustration
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/PasswordReset.png'),
              ),
              SizedBox(height: 20),

              Text(
                "Enter Your Email To Get OTP For Password Reset",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              // Email Input Field
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  // Add your OTP sending logic here

                  // Navigate to OTPVerificationScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OTPVerificationScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: Text(
                  "Send OTP",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
