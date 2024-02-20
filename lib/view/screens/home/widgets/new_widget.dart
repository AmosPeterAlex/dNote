import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  final String text1;
  final String text2;

  SectionWidget({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          height: 170.0,
          width: 340,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 90,
                  width: 310,
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      text1,
                      style:
                          TextStyle(fontSize: 30.0, color: Color(0xffec704b)),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 310,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    text2,
                    style: TextStyle(fontSize: 16.0,color: Colors.white),
                  ),
                ),
              ),
              // SizedBox(height: 5,)
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Subject Name'),
        ),
        body: Center(
          child: Column(
            children: [
              SectionWidget(
                text1: 'Section One',
                text2: 'Comments', //BottomSheet il baki cheyanm
              ),
            ],
          ),
        ),
      ),
    );
  }
}
