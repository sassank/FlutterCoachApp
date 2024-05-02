import 'package:flutter/material.dart';
import 'constants.dart';

void main() => runApp(const MyApp());

// This widget is the root of your application
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

// Welcome screen
class WelcomeScreen extends StatelessWidget {
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
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.white12,
                    Colors.black,
                  ],
                ),
                image: DecorationImage(
                  image: AssetImage('assets/gym.jpg'),
                  fit: BoxFit.fitHeight,
                  opacity: 0.3,
                ),
              ),
              // Add the RichText widget containing "Go Coach" text here
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,// Center vertically
                  children: <Widget>[
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Go Coach",
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 60,
                              fontWeight: FontWeight.w400,
                              shadows: [ // Add shadows here!
                                Shadow(
                                  offset: Offset(4.0, 4.0), // Adjust offset for shadow position
                                  blurRadius: 50.0, // Adjust blurRadius for shadow spread
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider( // HR (horizontal rule) line
                      height: 40,
                      thickness: 0.5,
                      indent: 90,
                      endIndent: 90,
                      color: Colors.white70, // Adjust color as needed
                    ),
                    const Text(
                      "Ce qui importe, c'est le progrès, \n non la perfection.",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
