import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_app1/UI/screens/home/favorites_page.dart';
import 'package:project_app1/UI/screens/home/home.dart';
import 'package:project_app1/UI/screens/home/shared_notepage.dart';

class BottomNavPage extends StatefulWidget {
  @override
  State<BottomNavPage> createState() => _BottomNavPage();
}

class _BottomNavPage extends State<BottomNavPage> {
  int index = 0;
  var screen = [
    HomePage(),
    FavoritePage(), //favorite page
    SharedNotePage() //shared note page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.houseCrack),
            label: "Home",
            activeIcon: FaIcon(FontAwesomeIcons.houseUser)
          ),
          BottomNavigationBarItem(
              activeIcon: FaIcon(FontAwesomeIcons.heartPulse),

              icon: FaIcon(FontAwesomeIcons.heartCrack,
                  color: Color(0xffdcc1ff)),
              label: "Favorites"),
          BottomNavigationBarItem(
              activeIcon: FaIcon(FontAwesomeIcons.bookOpenReader),
              icon: FaIcon(FontAwesomeIcons.bookOpen),
              label: 'Shared Notes'),
        ],
        onTap: (tapIndex) {
          setState(() {
            index = tapIndex;
          });
        },
        currentIndex: index,
        showSelectedLabels: false,
        selectedFontSize: 12,
        // selectedItemColor: Color(0xffdcc1ff),
        selectedIconTheme: IconThemeData(
          color: Color(0xfff5f378),
          size: 30,
        ),
        unselectedFontSize: 16,
        unselectedItemColor: Color(0xffdcc1ff),
        showUnselectedLabels: true,
        backgroundColor: Colors.black,
        iconSize: 24,
        // type: BottomNavigationBarType.shifting,
      ),
      body: screen[index],
    );
  }
}
