import 'package:flutter/material.dart';

import 'constants.dart';

void main() => runApp(MyApp());

//this widget is the root of your application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Coach',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: WelcomeScreen(),
    );
  }
}

  //ecran de bienvenue
  class WelcomeScreen extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/gym.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
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

