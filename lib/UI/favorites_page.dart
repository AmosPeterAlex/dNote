import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  // const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        title: ListTile(
          title: Text(
            'Hello, Amos',
            style: TextStyle(color: Color(0xffdcc1ff), fontSize: 30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Favorites',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
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
                                  color: Color(0xffdcc1ff),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        top: 5,
                                        right: 5,
                                        child: IconButton(
                                          icon: Icon(Icons.checklist_outlined),
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
                                            color: Color(0xffec704b)),
                                      ))
                                    ],
                                  )),
                            )),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
