import 'package:flutter/material.dart';
import 'package:go_coach/screens/register_screen.dart';
import 'package:go_coach/screens/home_screen.dart';

void main() => runApp(const LoginScreen());

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: const LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
        inputDecorationTheme: const InputDecorationTheme(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white70),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          labelStyle: TextStyle(color: Colors.white70),
          prefixIconColor: Colors.white70,
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>(); // Clé pour le formulaire
  bool _isObscure = true; // Pour gérer la visibilité du mot de passe

  // Controllers pour les champs de texte
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 35,
                                height: 2,
                                color: Colors.white,
                                letterSpacing: 3,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Welcome back 💪',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 30),
                            SizedBox(
                              width: 300,
                              child: TextFormField(
                                controller: _usernameController,
                                decoration: const InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: TextStyle(color: Colors.white),
                                  prefixIcon: Icon(Icons.email, color: Colors.white),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white70),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  return null;
                                },
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: 300,
                              child: TextFormField(
                                controller: _passwordController,
                                obscureText: _isObscure,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: const TextStyle(color: Colors.white),
                                  prefixIcon: const Icon(Icons.lock, color: Colors.white),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _isObscure ? Icons.visibility_off : Icons.visibility,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    },
                                  ),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white70),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your password';
                                  }
                                  return null;
                                },
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forgot Password?',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: 300,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 15),
                                  backgroundColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    // Navigate to home screen
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const HomeScreen(),
                                      ),
                                    );
                                  }
                                },
                                child: const Text(
                                  'Login',
                                  style: TextStyle(fontSize: 19, letterSpacing: 2, color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Don't have an account?", style: TextStyle(color: Colors.white)),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const RegisterPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Sign Up',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
