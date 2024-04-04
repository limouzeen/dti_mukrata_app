import 'package:flutter/material.dart';

class AboutUI extends StatefulWidget {
  const AboutUI({super.key});

  @override
  State<AboutUI> createState() => _AboutUIState();
}

class _AboutUIState extends State<AboutUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Image.asset(
                'assets/images/saulogo.png', // Replace 'your_image.png' with your actual image path
                width: MediaQuery.of(context).size.width * 0.4,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'Tech SAU Buffet', // Replace 'Your Text' with your actual text
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height *
                      0.03, // Adjust font size as needed
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                ),
              ),
           
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                'แอปพลิเคชันร้านหมูกะทะ', // Replace 'Your Text' with your actual text
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height *
                      0.02, // Adjust font size as needed
                  color: Color.fromARGB(255, 105, 105, 105),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'เพื่อคนไทย', // Replace 'Your Text' with your actual text
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height *
                      0.02, // Adjust font size as needed
                  color: Color.fromARGB(255, 105, 105, 105),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'โดยเด็กไทย', // Replace 'Your Text' with your actual text
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height *
                      0.02, // Adjust font size as needed
                  color: Color.fromARGB(255, 105, 105, 105),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'สนใจแอปพลิเคชันติดต่อ', // Replace 'Your Text' with your actual text
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height *
                      0.02, // Adjust font size as needed
                  color: Color.fromARGB(255, 105, 105, 105),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'เด็กไอที SAU', // Replace 'Your Text' with your actual text
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height *
                      0.03, // Adjust font size as needed
                  color: Color.fromARGB(255, 105, 105, 105),
                  fontWeight: FontWeight.bold,
                ),
              ),
          
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
                
             Image.asset(
                'assets/images/sauqr.png', // Replace 'your_image.png' with your actual image path
                width: MediaQuery.of(context).size.width * 0.25,
              ),
                
            ],
          ),
                ),
        ),
    );
  }
}