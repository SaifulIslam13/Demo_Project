import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_demo/mainscreen/profile_page.dart';
import 'package:project_demo/mainscreen/recip_home_page.dart';
import 'package:project_demo/mainscreen/recip_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List pages = [RecipHome(), RecipePage(), ProfilePage()];
  bool isSelected = true;

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          bool willLeave = false;
          // show the confirm dialog
          await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Are you sure?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text(
                    'No',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    willLeave = true;
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Yes',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
              content: Text('Do you want to exit from \nthis app'),
              backgroundColor: Color(0xFFFFD741),
            ),
          );
          return willLeave;
        },
        child: Scaffold(
          body: pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? CircleAvatar(
                        child: Icon(
                          Icons.home_filled,
                          size: 40,
                        ),
                        backgroundColor: Color(0xFF8BC24A),
                        foregroundColor: Colors.black,
                        radius: 25,
                      )
                    : Icon(
                        Icons.home_filled,
                        size: 40,
                      ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? CircleAvatar(
                        child: Icon(
                          Icons.restaurant_menu,
                          size: 40,
                        ),
                        backgroundColor: Color(0xFF8BC24A),
                        foregroundColor: Colors.black,
                        radius: 25,
                      )
                    : Icon(
                        Icons.restaurant_menu,
                        size: 40,
                      ),
                label: 'Recipe',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 2
                    ? CircleAvatar(
                        child: Icon(
                          Icons.person,
                          size: 40,
                        ),
                        backgroundColor: Color(0xFF8BC24A),
                        foregroundColor: Colors.black,
                        radius: 25,
                      )
                    : Icon(
                        Icons.person,
                        size: 40,
                      ),
                label: 'Profile',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xFFFFD741),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedFontSize: 16,
            selectedFontSize: 16,
            unselectedItemColor: Colors.black,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            onTap: _onItemTapped,
          ),
        ));
  }
}
