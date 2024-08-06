import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        foregroundColor : const Color(0xFF161514),
        title: const Text(
          'Catalog App',
        ),
        backgroundColor: const Color(0xFFADD8E6),
      ),
      drawer: const MyDrawer(),
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