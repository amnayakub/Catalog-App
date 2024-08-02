import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        foregroundColor : Colors.white,
        title: const Text(
          'Catalog App',
        ),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: const Drawer(

      ),
      body: const Center(
          child: Text(
            'Hello World!!!!',
            style : TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )
          ),
      ),
    );
  }
}