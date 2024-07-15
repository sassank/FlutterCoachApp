import 'package:flutter/material.dart';
import 'package:go_coach/screens/login_screen.dart';
import '../constants.dart'; // Assurez-vous que ce fichier contient la couleur kPrimaryColor

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/gym.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.black54,
                      Colors.black45,
                    ],
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
                              text: "GoCoach",
                              style: TextStyle(
                                fontSize: 40,
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold,
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
                        "What matters is not perfection \n but progress.",
                        style: TextStyle(
                          fontSize: 18,
                          height: 1.6,
                          color: Colors.white70,
                          letterSpacing: 0.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 80),
                      SizedBox(
                        width: 250,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LoginScreen()),
                            );
                            print('Get Started button pressed!');
                          },
                          child: const Text(
                            'Get Started',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: 250,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: kPrimaryColor, width: 2),
                            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LoginScreen()),
                            );
                            print('Login button pressed!');
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
