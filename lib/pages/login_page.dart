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

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                  child: Image.asset(
                    "assets/images/login_image.png",
                    width: MediaQuery.of(context).size.width * 0.8,
                    fit: BoxFit.contain,
                  ),
              ),
              Text(
                'Welcome $name',
                textAlign: TextAlign.center,
                style: const TextStyle(
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
                        setState(() {
                          
                        });
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      obscureText: true,
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
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed( const Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height:  changeButton ? 49 : 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFC25C50),
                          borderRadius: BorderRadius.circular(changeButton ? 50 : 15),
                        ),
                        child: changeButton ? const Icon(Icons.done, color: Colors.white,) : const Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   style: TextButton.styleFrom(
                    //     foregroundColor: Colors.white,
                    //     backgroundColor: const Color(0xFFC25C50),
                    //     padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(15.0),
                    //     ),
                    //   ),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: const Text(
                    //     'Log In',
                    //     style: TextStyle(
                    //       fontSize: 17,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 200,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}