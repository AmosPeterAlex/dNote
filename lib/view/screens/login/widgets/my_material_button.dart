import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMaterialButton extends StatelessWidget {
  final String buttonText;
  static TextStyle buttonTextStyle =
      GoogleFonts.kalam(fontSize: 26, color: Colors.black);

  final VoidCallback buttonPressed;
  final Color myColor;

  MyMaterialButton({
    super.key,
    required this.buttonText,
    required this.buttonPressed,
    required this.myColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: MaterialButton(
        onPressed: buttonPressed,
        shape: StadiumBorder(),
        color: myColor,
        height: 60,
        minWidth: 330,
        child: Text(
          buttonText,
          style: buttonTextStyle,
        ),
      ),
    );
  }
}
