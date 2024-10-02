// ignore_for_file: prefer_const_constructors

import 'package:astro_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "First Eclipse of 2024: Here's how the lunar eclipse brings changes in zodiacs",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "17th August-2024",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/Eclipse.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "First Lunar Eclipse of 2024: Let's delve into the prediction of the first Lunar eclipse and its effect on each zodiac sign.",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "First Eclipse of 2024: Here's how the lunar eclipse brings changes in zodiacs",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "17th August-2024",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/Eclipse.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "First Lunar Eclipse of 2024: Let's delve into the prediction of the first Lunar eclipse and its effect on each zodiac sign.",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
