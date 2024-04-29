import 'package:flutter/material.dart';
import 'package:project_app1/core/constants/color_constants.dart';
import 'package:project_app1/view/screens/home/widgets/new_widget.dart';
import 'package:project_app1/view/utils/my_colors.dart';

class NewNotes extends StatelessWidget {
  // const NewNotes({super.key});view

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subject Name'),
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(fontSize: 30, color: ColorConstants.lavender),
        toolbarHeight: 70,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: SectionWidget(text1: 'Section Name', text2: 'Comment')),
      ),
    );
  }
}
