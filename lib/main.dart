import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/welcome_screen.dart';

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
      home: const WelcomeScreen(),
    );
  }
}
