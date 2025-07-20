import 'package:flutter/material.dart';
import 'login.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEEBF6),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Icon(Icons.person_add, size: 80, color: Color(0xFF687FE5)),
              const SizedBox(height: 20),
              const Text('Sign Up', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              const TextField(decoration: InputDecoration(hintText: 'Full Name', prefixIcon: Icon(Icons.person), filled: true, fillColor: Colors.white)),
              const SizedBox(height: 16),
              const TextField(decoration: InputDecoration(hintText: 'Email', prefixIcon: Icon(Icons.email), filled: true, fillColor: Colors.white)),
              const SizedBox(height: 16),
              const TextField(obscureText: true, decoration: InputDecoration(hintText: 'Password', prefixIcon: Icon(Icons.lock), filled: true, fillColor: Colors.white)),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF687FE5), padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 80)),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginPage()));
                },
                child: const Text('Register'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginPage()));
                },
                child: const Text("Already have an account? Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
