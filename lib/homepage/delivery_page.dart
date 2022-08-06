import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
                      image: AssetImage('images/image2.jpg'),
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
                      fontSize: 30,
                      fontFamily: "fonts1",
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Very fast same day delivery and\ncustom delivery system",
                  style: TextStyle(fontFamily: "fonts1", fontSize: 16),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
