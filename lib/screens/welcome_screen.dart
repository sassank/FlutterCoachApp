import 'package:flutter/material.dart';
import 'package:go_coach/screens/login_test.dart'; // Update this import if needed
import '../constants/constants.dart'; // Ensure this file contains necessary constants like kPrimaryColor

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
                    const SizedBox(height: 20),
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
                        color: Colors.white70,
                        letterSpacing: 0.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 80),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 9.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginTest()),
                        );
                        print('button pressed!');
                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Commencez',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 3.0,
                            ),
                          ),
                          SizedBox(width: 10),
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
