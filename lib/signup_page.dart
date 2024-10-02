// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, library_private_types_in_public_api, unused_field

import 'package:astro_app/Login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKeySignup = GlobalKey<FormState>();
  final _formKeyLogin = GlobalKey<FormState>();

  final _signupEmailController = TextEditingController();
  final _signupPasswordController = TextEditingController();
  final _loginEmailController = TextEditingController();
  final _loginPasswordController = TextEditingController();

  bool _isAgreeTermsSignup = false;
  bool _isAgreeTermsLogin = false;
  bool _isPasswordVisibleSignup = false;
  bool _isPasswordVisibleLogin = false;

  // Regular expressions
  final RegExp _emailRegExp = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
  final RegExp _passwordRegExp =
      RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,}$');

  @override
  void dispose() {
    _signupEmailController.dispose();
    _signupPasswordController.dispose();
    _loginEmailController.dispose();
    _loginPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: TabBar(
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 20.0, // Increased font size for selected tab
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 18.0, // Increased font size for unselected tabs
            ),
            tabs: const <Widget>[
              Tab(text: 'Signup'),
              Tab(text: 'Login'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Signup page
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKeySignup,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50), // Added space above 'Full Name'
                    Text('Full Name',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 12.0),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your full name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 30),
                    Text('Email',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: _signupEmailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 12.0),
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
                    SizedBox(height: 30),
                    Text('Password',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: _signupPasswordController,
                      obscureText: !_isPasswordVisibleSignup,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisibleSignup
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisibleSignup =
                                  !_isPasswordVisibleSignup;
                            });
                          },
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 12.0),
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
                          value: _isAgreeTermsSignup,
                          onChanged: (bool? value) {
                            setState(() {
                              _isAgreeTermsSignup = value ?? false;
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
                          if (_formKeySignup.currentState?.validate() ??
                              false) {
                            if (_isAgreeTermsSignup) {
                              // Handle signup action
                            } else {
                              // Show a message to agree with terms
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content:
                                      Text('You must agree with the terms'),
                                ),
                              );
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          foregroundColor: Colors.black,
                        ),
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            fontSize: 18,
                          ),
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
            ),
            // Login page
            LoginPage(),
          ],
        ),
      ),
    );
  }
}
