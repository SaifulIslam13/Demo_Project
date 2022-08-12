import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_demo/loginpages/login_page.dart';
import 'package:project_demo/verification_pages/phone_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 400,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage("images/image4.jpg"),
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome to\nRegistration Page",
                style: TextStyle(
                    fontFamily: "fonts1",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Please write the correct information",
                style: TextStyle(color: Colors.blue, fontFamily: "fonts1"),
              ),
              SizedBox(
                height: 20,
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
                height: 20,
              ),
              Center(
                child: TextFormField(
                  decoration: InputDecoration(
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
                    suffixIcon: Icon(Icons.visibility),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PhoneVerify()));
                      },
                      child: Text("Continue"))),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Already Have an Account?",
                    style: TextStyle(fontFamily: "fonts1", fontSize: 16),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return SigninPage();
                        })));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
