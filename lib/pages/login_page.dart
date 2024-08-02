import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png"),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Welcome!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Username",
              hintText: "Enter username",
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Password",
              hintText: "Enter password",
            ),
          ),
        ],
      )
    );
  }
}