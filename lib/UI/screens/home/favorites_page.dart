import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:project_app1/UI/screens/home/on%20clicked/new_subject.dart';

class FavoritePage extends StatelessWidget {
  // const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Hello, Amos',
          style: GoogleFonts.lato(fontSize: 30, color: Color(0xffdcc1ff)),
          // style: TextStyle(color: Color(0xffdcc1ff), fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Favorites',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffec704b)),
              ),
              subtitle: SizedBox(
                height: 650,
                width: double.infinity,
                child: GridView.extent(
                  maxCrossAxisExtent: 650,
                  childAspectRatio: 2,
                  children: List.generate(
                    10,
                    (index) => InkWell(
                      onTap: () {
                        Get.to(() => NewSubjectPage());
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => NewSubjectPage()));
                      },
                      child: Card(
                        color: Color(0xffdcc1ff),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              top: 5,
                              right: 5,
                              child: IconButton(
                                icon: Icon(Icons.favorite),
                                color: Colors.black,
                                iconSize: 27,
                                onPressed: () {},
                              ),
                            ),
                            Positioned(
                              child: Text(
                                'Subject Name',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: .6,
                                    fontSize: 21,
                                    color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
