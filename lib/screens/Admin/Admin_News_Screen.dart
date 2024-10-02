import 'package:astro_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AdminNewsScreen extends StatelessWidget {
  const AdminNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
      ),
      body: Column(
        children: [Text("Title")],
      ),
    );
  }
}
