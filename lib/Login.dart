// login_page.dart

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKeyLogin = GlobalKey<FormState>();
  final _loginEmailController = TextEditingController();
  final _loginPasswordController = TextEditingController();
  bool _isAgreeTermsLogin = false;
  bool _isPasswordVisibleLogin = false;

  final RegExp _emailRegExp = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
  final RegExp _passwordRegExp =
      RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,}$');

  @override
  void dispose() {
    _loginEmailController.dispose();
    _loginPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKeyLogin,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            Text(
              'Email',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: _loginEmailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                if (!_emailRegExp.hasMatch(value)) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
            ),
            SizedBox(height: 25),
            Text('Password',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            TextFormField(
              controller: _loginPasswordController,
              obscureText: !_isPasswordVisibleLogin,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisibleLogin
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisibleLogin = !_isPasswordVisibleLogin;
                    });
                  },
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                if (!_passwordRegExp.hasMatch(value)) {
                  return 'Password must be at least 8 characters long, contain an uppercase letter, a lowercase letter, and a number';
                }
                return null;
              },
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Checkbox(
                  value: _isAgreeTermsLogin,
                  onChanged: (bool? value) {
                    setState(() {
                      _isAgreeTermsLogin = value ?? false;
                    });
                  },
                ),
                Expanded(
                  child: Text(
                    'I agree to the Terms and Conditions',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity, // Make button full-width
              child: ElevatedButton(
                onPressed: () {
                  if (_formKeyLogin.currentState?.validate() ?? false) {
                    if (_isAgreeTermsLogin) {
                      // Handle login action
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text('You must agree with the terms')),
                      );
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                ),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Or sign up with",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.google),
                  iconSize: 26,
                  padding: EdgeInsets.only(left: 20),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.instagram),
                  iconSize: 26,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.facebook),
                  iconSize: 26,
                  padding: EdgeInsets.only(right: 20),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
