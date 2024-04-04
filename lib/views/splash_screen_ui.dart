import 'dart:async';

import 'package:dti_mukrata_app/views/home_ui.dart';
import 'package:flutter/material.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {


  @override
  void initState() {
    super.initState();
    // Adding a delay of 3 seconds before navigating to the next screen
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeUI()), // Replace NextScreen() with your next screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/images/logo.png', // Replace 'your_image.png' with your actual image path
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.width * 0.5,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              CircularProgressIndicator(
                color: Colors.white,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ), // Add some space between image and text
              Text(
                'Tech SAU Buffet', // Replace 'Your Text' with your actual text
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height *
                      0.05, // Adjust font size as needed
                  color: Colors.white, // Adjust text color as needed
                ),
              ),
               Text(
                'Copyright © 2024 by Amarat', // Replace 'Your Text' with your actual text
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height *
                      0.02, // Adjust font size as needed
                  color: Colors.white, // Adjust text color as needed
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
