import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  CustomFloatingActionButton({Key? key, required this.onPressed})
      : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 62,right: 7),
          //you can adjust this to the height you want),
          child: FloatingActionButton.extended(
            onPressed: onPressed,
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
        ),
      ],
    );
  }
}
