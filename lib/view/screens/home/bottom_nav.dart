import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_app1/core/constants/color_constants.dart';
import 'package:project_app1/view/screens/home/favorites_page.dart';
import 'package:project_app1/view/screens/home/home.dart';
import 'package:project_app1/view/screens/home/shared_notepage.dart';
import 'package:project_app1/view/utils/my_colors.dart';

class BottomNavPage extends StatefulWidget {
  @override
  State<BottomNavPage> createState() => _BottomNavPage();
}

class _BottomNavPage extends State<BottomNavPage> {
  int index = 0;
  var screen = [HomePage(), FavoritePage(), SharedNotePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(right: 15, left: 15, bottom: 15),
        child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(35),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.houseCrack),
                activeIcon: FaIcon(FontAwesomeIcons.house),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.heartCrack),
                  activeIcon: FaIcon(FontAwesomeIcons.heartPulse),
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
              color: ColorConstants.yellow,
              size: 28,
            ),
            unselectedFontSize: 16,
            unselectedItemColor: ColorConstants.lavender,
            showUnselectedLabels: true,
            // backgroundColor: myBlack,
            iconSize: 20,
          ),
        ),
      ),
      body: screen[index],
    );
  }
}
