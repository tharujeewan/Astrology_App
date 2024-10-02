// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:astro_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:astro_app/utils/app_pictures.dart';

class AeriesScreen extends StatelessWidget {
  const AeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
      ),
      body: SingleChildScrollView(
        // Added SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align content to the left
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 86, top: 5), // Center the image
                child: ClipOval(
                  child: Image.asset(
                    AriesImage,
                    height: 180,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding:
                    const EdgeInsets.only(left: 140), // Center the Aries text
                child: Text(
                  "Aries",
                  style: TextStyle(fontSize: 26),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Daily horoscope",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red, // Red border color
                    width: 2.0,
                  ),
                  borderRadius:
                      BorderRadius.circular(10), // Optional rounded corners
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "❤️ Love",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "This will be a weekend of  big changes in your romantic life, Aries.But don’t leave it to chance, take matters into your own hands.",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red, // Red border color
                    width: 2.0,
                  ),
                  borderRadius:
                      BorderRadius.circular(10), // Optional rounded corners
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Career",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "This will be a weekend of  big changes in your romantic life, Aries.But don’t leave it to chance, take matters into your own hands.",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red, // Red border color
                    width: 2.0,
                  ),
                  borderRadius:
                      BorderRadius.circular(10), // Optional rounded corners
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "💵 Money",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "This will be a weekend of  big changes in your romantic life, Aries.But don’t leave it to chance, take matters into your own hands.",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red, // Red border color
                    width: 2.0,
                  ),
                  borderRadius:
                      BorderRadius.circular(10), // Optional rounded corners
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Health",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "This will be a weekend of  big changes in your romantic life, Aries.But don’t leave it to chance, take matters into your own hands.",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red, // Red border color
                    width: 2.0,
                  ),
                  borderRadius:
                      BorderRadius.circular(10), // Optional rounded corners
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "✈️ Travel",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "This will be a weekend of  big changes in your romantic life, Aries.But don’t leave it to chance, take matters into your own hands.",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
