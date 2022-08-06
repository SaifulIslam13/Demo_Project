import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_demo/homepage/page1.dart';
import 'package:project_demo/homepage/page2.dart';
import 'package:project_demo/homepage/page3.dart';
import 'package:project_demo/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _controller = PageController();
  bool onlastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onlastpage = (index == 2);
            });
          },
          children: [Page1(), Page2(), Screen3()],
        ),
        Container(
            alignment: Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }));
                    },
                    child: Text("Skip")),
                SmoothPageIndicator(
                    effect: CustomizableEffect(
                        dotDecoration: DotDecoration(
                            height: 5,
                            width: 5,
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black45),
                        activeDotDecoration: DotDecoration(
                            height: 8,
                            width: 25,
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(5))),
                    controller: _controller,
                    count: 3),
                onlastpage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }));
                        },
                        child: Container(
                            height: 30,
                            width: 45,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              "Start",
                              style: TextStyle(color: Colors.black),
                            ))))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(microseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Icon(Icons.arrow_forward))
              ],
            ))
      ],
    ));
  }
}
