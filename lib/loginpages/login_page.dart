import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_demo/reg_page.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.green, Colors.blue])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: Text(
                "SIGN IN",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 618,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to Login\nPage.',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                    Text(
                      'Please write correct information',
                      style: TextStyle(color: Colors.black45),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        icon: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.email_outlined,
                              color: Colors.white,
                              size: 25,
                            )),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.blue),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility),
                        icon: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.lock,
                              color: Colors.white,
                              size: 30,
                            )),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.blue),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Sign In"))),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Don't have any account?",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LoginPage();
                            }));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
