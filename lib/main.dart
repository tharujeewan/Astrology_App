// ignore_for_file: prefer_const_constructors, unused_import
import 'package:astro_app/screens/Admin/Admin_User_Screen.dart';
import 'package:astro_app/screens/Bottom_navigationbar_Screen.dart';
import 'package:astro_app/screens/HomeScreen.dart';
import 'package:astro_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}
