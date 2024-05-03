import 'package:flutter/material.dart';
import 'constants.dart';
import 'login_screen.dart'; // Import login screen

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
                  opacity: 0.2,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Go Coach",
                            style: TextStyle(
                              fontSize: 60,
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 3.0,
                              shadows: [
                                Shadow(
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 55.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20), // Reduced spacing above divider
                    const Divider(
                      height: 30,
                      thickness: 0.5,
                      indent: 90,
                      endIndent: 90,
                      color: Colors.white70,
                    ),
                    const Text(
                      "Ce qui importe, c'est le progrès, \n non la perfection.",
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.6,
                        color: Colors.white,
                        letterSpacing: 0.5,
                      ),
                      textAlign: TextAlign.center, // Center align text
                    ),
                    const SizedBox (height: 80), // Reduced spacing between text and button
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 9.0), // Adjust the horizontal padding
                      ),
                      onPressed: () {
                        // Navigate to login screen
                        var push = Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginScreen()),
                        );
                        print('Connexion button pressed!');
                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min, // Use MainAxisSize.min to fit the content
                        children: [
                          Text(
                            'Commencez',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 3.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 10),  // Added space between text and icon
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
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
