import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app1/view/screens/home/widgets/new_floating_button.dart';
import 'package:project_app1/view/screens/home/widgets/new_note.dart';
import 'package:project_app1/view/screens/home/widgets/new_subject.dart';
import 'package:project_app1/view/screens/login/login_options.dart';
import 'package:project_app1/view/utils/my_colors.dart';

import '../../../controller/note_controller.dart';
import '../../../firebase_my_auth_func.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});
  final NoteBookController controller = Get.find<NoteBookController>();

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [myLavender, myRed, myYellow];
    List<Color> shuffledColors = [];
    List<Color> shuffledColors1 = [];

    shuffledColors = List.from(colors)..shuffle(Random());
    shuffledColors1 = List.from(colors)..shuffle(Random());
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Hello, Amos',
          style: GoogleFonts.lato(fontSize: 30, color: myLavender),
        ),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseHelper().logOut().then((value) => Get.to(LoginOptions()));
            },
            icon: Icon(
              Icons.logout,
              color: Colors.white,
              size: 22,
            ),
          )
        ],
      ),
      floatingActionButton: CustomFloatingActionButton(onPressed: () {
        Get.to(NewNotes());
      }),
      body: Obx(() => ListView.builder(
            itemCount: controller.noteBooks.length,
            itemBuilder: (context, index) {
              final notebook = controller.noteBooks[index];
              Color color1 = shuffledColors1[index % colors.length];
              return InkWell(
                onTap: () {
                  Get.to(NewSubjectPage());
                },
                child: Container(
                  height: 150,
                  child: Card(
                    color: color1,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          top: 5,
                          right: 5,
                          child: IconButton(
                            icon: Icon(notebook.isFav
                                ? Icons.favorite
                                : Icons.favorite_border),
                            color: Colors.black,
                            iconSize: 27,
                            onPressed: () {
                              print('added to fav pressed');
                              controller.toggleFavorite(notebook);
                            },
                          ),
                        ),
                        Positioned(
                          child: Text(
                            notebook.subjectName,
                            // Use the subjectName property from the notebook
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
              );
            },
          )),
    );
  }
}
/*
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .8,
              child: Obx(
                () => GridView.extent(
                  physics: BouncingScrollPhysics(),
                  maxCrossAxisExtent: double.infinity,
                  childAspectRatio: 2,
                  children: List.generate(
                    5,
                    (index) {
                      final notebook = controller.noteBooks[index];
                      Color color1 = shuffledColors1[index % colors.length];
                      return InkWell(
                        onTap: () {
                          Get.to(NewSubjectPage());
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
                                  icon: Icon(notebook.isFav
                                      ? Icons.favorite
                                      : Icons.favorite_border),
                                  color: Colors.black,
                                  iconSize: 27,
                                  onPressed: () =>
                                      controller.toggleFavorite(notebook),
                                ),
                              ),
                              Positioned(
                                child: Text(
                                  notebook.subjectName,
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
          ],
        ),
      ),
      */

/*
if this gets 3g
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app1/view/screens/home/widgets/new_floating_button.dart';
import 'package:project_app1/view/screens/home/widgets/new_note.dart';
import 'package:project_app1/view/screens/home/widgets/new_subject.dart';
import 'package:project_app1/view/screens/login/login_options.dart';
import 'package:project_app1/view/utils/my_colors.dart';

import '../../../firebase_my_auth_func.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [myLavender, myRed, myYellow];
    List<Color> shuffledColors = [];
    List<Color> shuffledColors1 = [];

    shuffledColors = List.from(colors)..shuffle(Random());
    shuffledColors1 = List.from(colors)..shuffle(Random());
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Hello, Amos',
          style: GoogleFonts.lato(fontSize: 30, color: myLavender),
        ),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseHelper().logOut().then((value) => Get.to(LoginOptions()));
            },
            icon: Icon(
              Icons.logout,
              color: Colors.white,
              size: 22,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            ListTile(
              //TODO textstyles il sepearte file create akenm
              title: Text(
                "Recent Books",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: myLavender),
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
                              //TODO evde dummy data vech names edukenm
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
                    color: myLavender),
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
      floatingActionButton: CustomFloatingActionButton(onPressed: (){Get.to(NewNotes());}),
      // floatingActionButton: FloatingActionButton.extended(
      //   tooltip: 'Create New Note',
      //   onPressed: () {
      //     Get.to(NewNotes());
      //   },
      //   label: Row(
      //     children: [
      //       Icon(Icons.edit),
      //       Text(
      //         'New Note',
      //         style: TextStyle(fontSize: 16),
      //       )
      //     ],
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}

 */
