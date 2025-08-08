import 'package:flutter/material.dart';
import 'package:prac_app/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/login_img.png',
                fit: BoxFit.cover,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Username', hintText: 'Enter Username'),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelText: "Password", hintText: "Enter Password"),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          // print('Rahim logged in');
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            fixedSize: Size(120, 40)),
                        child: Text("Log In"))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
