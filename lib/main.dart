import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/welcome_screen.dart';
import 'firebase_options.dart'; // Ensure this file exists with your Firebase options

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

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
