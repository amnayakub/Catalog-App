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
              color: Color.fromARGB(255, 64, 85, 175),
              fontWeight: FontWeight.w900,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 45.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Username",
                    hintText: "Enter username",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    hintText: "Enter password",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(),
                  onPressed: () {},
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}