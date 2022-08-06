import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                    height: 400,
                    width: double.infinity,
                    child: Image(
                      image: AssetImage('images/image3.jpg'),
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Fast Delivery",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "fonts1",
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Very fast same day delivery and\ncustom delivery system",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "fonts1", fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
