import 'package:flutter/material.dart';
import 'package:go_coach/screens/login_screen.dart';
import 'package:go_coach/screens/welcome_screen.dart';

void main() => runApp(const RegisterScreen());

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inscription',
      home: const RegisterPage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blueGrey, Colors.white70], // Gradient colors
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 8),
                  const Text(
                    'Inscrivez-vous !',
                    style: TextStyle(
                      fontSize: 32,
                      height: 1,
                      color: Colors.white70,
                      letterSpacing: 3,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Identifiant',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Mot de passe',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Mot de passe oublié?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Connexion',
                      style: TextStyle(fontSize: 19, letterSpacing: 5),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text('OU'),
                  const SizedBox(height: 15),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(50),
                    ),
                    icon: const Icon(Icons.login),
                    label: const Text('Se connecter avec Google'),
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Vous n'avez pas de compte ?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                          );
                          print('button pressed!');
                        },
                        child: const Text('S\'inscrire'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}