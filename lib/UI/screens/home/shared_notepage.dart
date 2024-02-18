import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SharedNotePage extends StatelessWidget {
  // const SharedNotePage({super.key});

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
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Shared Notes',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffdcc1ff),
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
                    (index) => InkWell(
                      onTap: () {},
                      child: Card(
                        color: Color(0xffec704b),
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
