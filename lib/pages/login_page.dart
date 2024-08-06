import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHomePage(BuildContext context) async {
    if(_formKey.currentState?.validate() ?? false) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed( const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFADD8E6), // Light Blue
              Color.fromARGB(255, 248, 200, 207), // Pastel Pink
              Color(0xFFE6E6FA), // Lavender
              Color(0xFFFFFFE0), // Bright Yellow
              Color(0xFF98FF98), // Mint Green
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 43),
                      child: Image.asset(
                        "assets/images/login_image.png",
                        width: MediaQuery.of(context).size.width * 0.8,
                        fit: BoxFit.contain,
                      ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Welcome to Itemize!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF161514),
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 47,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 45.0),
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if(value?.isEmpty ?? true) {
                              return "Username can not be empty!";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Username",
                            hintText: "Enter username",
                            prefixIcon: const Icon(Icons.person, color: Color(0xFF161514)),
                            labelStyle: const TextStyle(color: Color(0xFF161514)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(color: Color(0xFF161514)),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(color: Color(0xFF161514)),
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 247, 246, 246),
                            contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                            
                          ),
                          onChanged: (value) {
                            name = value;
                          },
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if(value?.isEmpty ?? true) {
                              return "Password can not be empty!";
                            } else if ((value?.length ?? 0) < 6) {
                              return "Password must be at least 6 characters long!";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter password",
                            labelStyle: const TextStyle(color: Color(0xFF161514)),
                            prefixIcon: const Icon(Icons.lock, color: Color(0xFF161514)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(color: Color(0xFF161514)),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(color: Color(0xFF161514)),
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 247, 246, 246),
                            contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                          ),
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(changeButton ? 50 : 15),
                          color : const Color(0xFF161514),
                          child: InkWell(
                            onTap: () async => moveToHomePage(context),
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              width: changeButton ? 50 : 150,
                              height:  changeButton ? 49 : 45,
                              alignment: Alignment.center,
                              child: changeButton ? const Icon(Icons.done, color: Color.fromARGB(255, 247, 246, 246),) : const Text(
                                'Log In',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 247, 246, 246),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 200,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}