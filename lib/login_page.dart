import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
          body: Padding(
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
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Please write the correct information",
              style: TextStyle(color: Colors.blue),
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
              height: 10,
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
                        size: 25,
                      )),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child:
                    ElevatedButton(onPressed: () {}, child: Text("Continue"))),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text("Already Have an Account?"),
                InkWell(
                    onTap: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.red),
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
