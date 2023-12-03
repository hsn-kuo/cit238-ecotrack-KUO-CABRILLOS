import 'package:ecotrack/splashscreen.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'homepage.dart';
import 'calculator.dart';
import 'results.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoTrack+',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(), // Change to SplashScreen
        '/login': (context) => LoginScreen(),
        '/homepage': (context) => WelcomePage(),
        '/calculator': (context) => EcologicalFootprintCalculator(),
        '/results': (context) => EcologicalFootprintAnalysisApp(),
      },
    );
  }
}
