import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer
({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Amna Yakub"),
              accountEmail: Text("amnayaqoob909@gmail.com"),
            )
          )
        ],
      ),
    );
  }
}