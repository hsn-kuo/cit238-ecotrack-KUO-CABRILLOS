import 'package:flutter/material.dart';
import 'login.dart'; // Import your login screen file

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the next screen when tapped
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) =>
                  LoginScreen()), // Change to your desired screen
        );
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('spalshscreen.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
