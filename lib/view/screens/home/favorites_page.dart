import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:project_app1/core/constants/color_constants.dart';

import 'package:project_app1/view/screens/home/widgets/new_subject.dart';
import 'package:project_app1/view/utils/my_colors.dart';

import '../../../controller/new_note_controller.dart';
import '../../../controller/note_controller.dart';

class FavoritePage extends StatelessWidget {
  // const FavoritePage({super.key});
  final NoteBookController controller = Get.find<NoteBookController>();

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      ColorConstants.lavender,
      ColorConstants.red,
      ColorConstants.yellow
    ];
    List<Color> shuffledColors = [];

    shuffledColors = List.from(colors)..shuffle(Random());
    return Scaffold(
      backgroundColor: ColorConstants.black,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: ColorConstants.black,
        centerTitle: true,
        title: Text(
          'Hello, Amos',
          style: GoogleFonts.lato(
            fontSize: 30,
            color: Color(0xffdcc1ff),
          ),
        ),
      ),
      body: Obx(() => ListView.builder(
            itemCount:
                controller.noteBooks.where((notebook) => notebook.isFav).length,
            itemBuilder: (context, index) {
              final favoriteNotebooks = controller.noteBooks
                  .where((notebook) => notebook.isFav)
                  .toList();
              final notebook = favoriteNotebooks[index];
              Color color1 = shuffledColors[index % colors.length];
              return InkWell(
                onTap: () {
                  Get.to(NewSubjectPage());
                },
                child: SizedBox(
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
                            icon: Icon(Icons.favorite),
                            color: Colors.red,
                            // Adjust color based on favorite status
                            iconSize: 27,
                            onPressed: () => controller.toggleFavorite(
                                notebook), // Toggle favorite status
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
                ),
              );
            },
          )),
    );
    /*
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
                  color: Color(0xffec704b),
                ),
              ),
              subtitle: SizedBox(
                height: 650,
                width: double.infinity,
                child: GridView.extent(
                  maxCrossAxisExtent: 650,
                  childAspectRatio: 2,
                  children: List.generate(
                    10,
                    (index) {
                      Color color = shuffledColors[index % colors.length];
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NewSubjectPage(),
                            ),
                          );
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
                                  icon: Icon(Icons.favorite),
                                  color: Colors.black,
                                  iconSize: 27,
                                  onPressed: () {},
                                ),
                              ),
                              Positioned(
                                child: Text(
                                  'Subject Name',
                                  style: GoogleFonts.oswald(
                                      fontSize: 22,
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.w500),
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
    );

       */
  }
}
