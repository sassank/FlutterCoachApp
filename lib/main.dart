import 'package:flutter/material.dart';
import 'constants.dart'; // Make sure this import exists and contains necessary constants
import 'screens/welcome_screen.dart'; // Importing the WelcomeScreen from the new file

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Coach',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: const WelcomeScreen(), // Reference to the separated WelcomeScreen
    );
  }
}
