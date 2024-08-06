import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

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