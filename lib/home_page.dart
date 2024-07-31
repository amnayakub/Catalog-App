import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Catalog App',
        ),
        backgroundColor: Colors.green,
      ),
      drawer: const Drawer(

      ),
      body: Center(
        child: Container(
          child: const Text('Hello World!!!!'
          ),
        ),
      ),
    );
  }
}