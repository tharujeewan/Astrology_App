// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_element

// import 'package:astro_app/screens/Capricorn_Screen.dart';

import 'package:astro_app/screens/Profile/Profile_Screen.dart';

import 'package:astro_app/screens/Zodiac/Aeries_Screen.dart';
import 'package:astro_app/screens/Zodiac/Aquarius_Screen.dart';
import 'package:astro_app/screens/Zodiac/Cancer_Screen.dart';
import 'package:astro_app/screens/Zodiac/Capricorn_Screen.dart';
import 'package:astro_app/screens/Zodiac/Gemini_Screen.dart';
import 'package:astro_app/screens/Zodiac/Leo_Screen.dart';
import 'package:astro_app/screens/Zodiac/Libra_Screen.dart';
import 'package:astro_app/screens/Zodiac/Pisces_Screen.dart';
import 'package:astro_app/screens/Zodiac/Sagittarius_Screen.dart';
import 'package:astro_app/screens/Zodiac/Scorpio_Screen.dart';
import 'package:astro_app/screens/Zodiac/Taurus_Screen.dart';
import 'package:astro_app/screens/Zodiac/Virgo_Screen.dart';
import 'package:astro_app/utils/app_colors.dart';
import 'package:astro_app/utils/app_pictures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> daysOfWeek = [
      "Sun",
      "Mon",
      "Tue",
      "Wed",
      "Thu",
      "Fri",
      "Sat"
    ];

    final List<String> zodiacSigns = [
      "Taurus",
      "Aeries",
      "Gemini",
      "Cancer",
      "Leo",
      "Virgo",
      "Libra",
      "Scorpio",
      "Sigattarius",
      "Capricorn",
      "Aquarius",
      "Pisces"
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        toolbarHeight: 120,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                kundliImage,
                height: 90,
                width: 90,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hi, Akash",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "What do you want to know",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(30, (index) {
                  final int dayIndex = index % 7;
                  final dayName = daysOfWeek[dayIndex];

                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            '${index + 1}',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          dayName,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Select your sign',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.1,
                ),
                itemCount: zodiacSigns.length,
                itemBuilder: (context, index) {
                  final imageName = zodiacSigns[index];
                  final imagePath = 'assets/images/zodiac_sign/$imageName.png';

                  return InkWell(
                    onTap: () {
                      // Navigate to a different page for each zodiac sign
                      switch (imageName) {
                        case 'Taurus':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TaurusScreen(),
                            ),
                          );
                          break;
                        case 'Aeries':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AeriesScreen(),
                            ),
                          );
                          break;
                        case 'Gemini':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GeminiScreen(),
                            ),
                          );
                          break;
                        case 'Cancer':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CancerScreen(),
                            ),
                          );
                          break;
                        case 'Leo':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LeoScreen(),
                            ),
                          );
                          break;
                        case 'Virgo':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VirgoScreen(),
                            ),
                          );
                          break;
                        case 'Libra':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LibraScreen(),
                            ),
                          );
                          break;
                        case 'Scorpio':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScorpioScreen(),
                            ),
                          );
                          break;
                        case 'Sagittarius':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SagittariusScreen(),
                            ),
                          );
                          break;
                        case 'Capricorn':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CapricornScreen(),
                            ),
                          );
                          break;
                        case 'Aquarius':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AquariusScreen(),
                            ),
                          );
                          break;
                        case 'Pisces':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PiscesScreen(),
                            ),
                          );
                          break;
                        default:
                          break;
                      }
                    },
                    child: ClipRect(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  imagePath,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              imageName,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
