import 'package:flutter/material.dart';

import 'constants.dart';

void main() => runApp(const MyApp());

//this widget is the root of your application
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

  //welcome screen
  class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/gym.jpg'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                RichText(
                  text: const TextSpan(
                    children: [TextSpan(text: "Go Coach")]
                    ),
                  ),
              ]
            ),
          )
          ]
        ),
      );
    }
  }

