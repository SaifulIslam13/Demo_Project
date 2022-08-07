import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_demo/model_class/_items.dart';
import 'package:project_demo/popularitem/popular_item.dart';
import 'package:carousel_slider/carousel_slider.dart';

class RecipHome extends StatefulWidget {
  const RecipHome({Key? key}) : super(key: key);

  @override
  State<RecipHome> createState() => _RecipHomeState();
}

class _RecipHomeState extends State<RecipHome> {
  final groceryItem = GroceryItem.itemList();
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: isClick == false ? Color(0xFFE6F2FF) : Colors.black,
          padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hand pick fresh \nitems nonly for you.',
                          style: TextStyle(
                            color:
                                isClick == false ? Colors.black : Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'fonts2',
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.black,
                              size: 40,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isClick = !isClick;
                                });
                              },
                              child: Container(
                                  alignment: isClick == false
                                      ? Alignment.topLeft
                                      : Alignment.topRight,
                                  height: 60,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: isClick == false
                                        ? Colors.grey.shade300
                                        : Color(0xFF261051),
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(
                                      color: isClick == false
                                          ? Colors.grey.shade400
                                          : Color(0xFF3D1E71),
                                      width: 8,
                                    ),
                                  ),
                                  child: Image(
                                    image: isClick == true
                                        ? AssetImage('images/night_img.png')
                                        : AssetImage('images/light_img.png'),
                                    height: 50,
                                    width: 50,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      //padding: EdgeInsets.only(top: 10),
                      // margin: EdgeInsets.only(
                      //     left: 15, right: 15, top: 15, bottom: 0),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'Search For Enythings',
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.grey.shade600,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 40,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        cursorColor: Colors.grey.shade600,
                        cursorHeight: 25,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Categories',
                            style: TextStyle(
                              color: isClick == false
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(
                              color: Color(0xFFFA5B07),
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 0),
                      height: 130,
                      decoration: BoxDecoration(
                          //color: Colors.red
                          ),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: groceryItem.length,
                        itemBuilder: (context, index) {
                          return Container(
                            alignment: Alignment.bottomCenter,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage('${groceryItem[index].img}'),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFE5722),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  )),
                              child: Text(
                                '${groceryItem[index].name}',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 15,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                //AUTO SLIDER BANNER
                child: CarouselSlider.builder(
                  itemCount: groceryItem.length,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      //color: Colors.grey,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage('${groceryItem[index].img}'),
                            fit: BoxFit.cover,
                          )),
                    );
                  },
                  options: CarouselOptions(
                    height: 160,
                    autoPlay: true,
                    pageSnapping: true,
                    autoPlayCurve: Curves.easeInBack,
                    autoPlayInterval: Duration(seconds: 2),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PopularItem()));
                          },
                          child: Text(
                            'Popular Deals',
                            style: TextStyle(
                              color: isClick == false
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(
                              color: Color(0xFFFA5B07),
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: List.generate(
                          groceryItem.length,
                          (index) => Stack(
                            children: [
                              Container(
                                alignment: Alignment.bottomCenter,
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 25),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '${groceryItem[index].name}',
                                      style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 20,
                                right: 20,
                                top: 0,
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundImage: AssetImage(
                                    '${groceryItem[index].img}',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
