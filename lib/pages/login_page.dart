import 'package:flutter/material.dart';
import 'package:prac_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool onChangebtn = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/login_img.png',
                  fit: BoxFit.cover,
                  height: 200,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome $name",
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
                        onChanged: (value) =>
                            {name = value, setState(() => {})},
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            labelText: "Password", hintText: "Enter Password"),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: () async {
                          setState(() => {
                                onChangebtn = true,
                              });
                          await Future.delayed(Duration(seconds: 1));
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 40,
                          width: onChangebtn ? 40 : 140,
                          alignment: Alignment.center,
                          child: onChangebtn
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Log In",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                          decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius:
                                  BorderRadius.circular(onChangebtn ? 40 : 8)),
                        ),
                      )
                      // ElevatedButton(
                      //     onPressed: () {
                      //       // print('Rahim logged in');
                      //       // Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //       setState(() {});
                      //     },
                      //     style: ElevatedButton.styleFrom(
                      //         foregroundColor: Colors.white,
                      //         fixedSize: Size(120, 40)),
                      //     child: Text("Log In"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
