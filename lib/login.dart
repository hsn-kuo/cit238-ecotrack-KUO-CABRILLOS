import 'package:flutter/material.dart';
import 'homepage.dart'; // Import the homepage.dart file

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.green,
              Colors.lightGreen
            ], // Change gradient colors as needed
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // EcoTrack+ logo (larger size)
              Image.asset(
                'assets/ecotrack_logo.png',
                height: 150,
                width: 500, // Adjust the height as needed
              ),

              // Login text
              Text('Login to your account',
                  style: TextStyle(color: Colors.white)),

              // Email text field
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),

              // Password text field
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),

              // Login button
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the HomePage when the button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Change button color
                  ),
                  child: Text('Login'),
                ),
              ),

              // Forgot password text
              TextButton(
                onPressed: () {
                  // Add logic for handling forgot password
                },
                style: TextButton.styleFrom(
                  primary: const Color.fromARGB(
                      255, 255, 255, 255), // Change text color
                ),
                child: Text('Forgot your password?'),
              ),

              // Social media login buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.facebook),
                    onPressed: () {
                      // Add logic for Facebook login
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.email),
                    onPressed: () {
                      // Add logic for Google login
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
