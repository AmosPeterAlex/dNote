import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app1/UI/screens/home/on%20clicked/new_note.dart';
import 'package:project_app1/UI/screens/home/on%20clicked/new_subject.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Color(0xffdcc1ff),
      Color(0xffec704b),
      Color(0xfff5f378)
    ];
    List<Color> shuffledColors = [];
    List<Color> shuffledColors1 = [];

    shuffledColors = List.from(colors)..shuffle(Random());
    shuffledColors1 = List.from(colors)..shuffle(Random());
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
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Recent Books",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffdcc1ff)),
              ),
              subtitle: SizedBox(
                width: double.infinity,
                height: 170,
                // color: Colors.white,
                child: GridView.extent(
                  childAspectRatio: .7,
                  scrollDirection: Axis.horizontal,
                  maxCrossAxisExtent: 280,
                  children: List.generate(
                    6,
                    (index) {
                      Color color = shuffledColors[index % colors.length];
                      return InkWell(
                        onTap: () {
                          Get.to(NewSubjectPage());
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => NewSubjectPage()));
                        },
                        child: Card(
                          color: color,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                top: 5,
                                right: 5,
                                child: IconButton(
                                  icon: Icon(Icons.favorite_border_outlined),
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
                      );
                    },
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'My NoteBooks',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffdcc1ff)),
              ),
              subtitle: SizedBox(
                height: 360,
                child: GridView.extent(
                  physics: BouncingScrollPhysics(),
                  maxCrossAxisExtent: double.infinity,
                  childAspectRatio: 2,
                  children: List.generate(
                    10,
                    (index) {
                      Color color1 = shuffledColors1[index % colors.length];
                      return InkWell(
                        onTap: () {
                          Get.to(NewSubjectPage());
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => NewSubjectPage()));
                        },
                        child: Card(
                          color: color1,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                top: 5,
                                right: 5,
                                child: IconButton(
                                  icon: Icon(Icons.favorite_border_outlined),
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
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        tooltip: 'Create New Note',
        onPressed: () {
          Get.to(NewNotes());
          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (context) => NewNotes()));
        },
        label: Row(
          children: [
            Icon(Icons.edit),
            Text(
              'New Note',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
