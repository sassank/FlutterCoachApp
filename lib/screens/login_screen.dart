import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home_screen.dart';
import 'register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: const LoginScreen(),
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

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _signInWithEmailAndPassword() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _usernameController.text,
        password: _passwordController.text,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('You are connected: ${_usernameController.text}')),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } on FirebaseAuthException catch (e) {
      String message;
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password provided.';
      } else {
        message = e.message!;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }

  Future<void> resetPassword({required String email}) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Password reset email sent to $email')),
      );
    } on FirebaseAuthException catch (e) {
      String message;
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else {
        message = e.message!;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
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
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
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
                          'Welcome back!',
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
                            onPressed: () async {
                              if (_usernameController.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Please enter your email')),
                                );
                                return;
                              }
                              await resetPassword(email: _usernameController.text.trim());
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 200,
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
                                _signInWithEmailAndPassword();
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
                                    builder: (context) => const RegisterScreen(),
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
        ),
      ),
    );
  }
}