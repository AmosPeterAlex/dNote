import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../controller/obscure_controller.dart';
import '../../../utils/my_colors.dart';

class MyTextField extends StatelessWidget {
  final String textFieldHeading;
  final TextEditingController controller;
  final bool isPassword;

  const MyTextField({
    Key? key,
    required this.textFieldHeading,
    required this.controller,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ObscureController>(
        init: ObscureController(),
        builder: (_) => ListTile(
              title: Text(
                textFieldHeading,
                style: GoogleFonts.asapCondensed(
                    fontSize: 22,
                    color: myLavender,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.5),
              ),
              subtitle: TextField(
                controller: controller,
                obscureText: isPassword
                    ? Get.find<ObscureController>().showPassword.value
                    : false,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: isPassword
                      ? IconButton(
                          icon: Icon(
                              Get.find<ObscureController>().showPassword.value
                                  ? Icons.visibility_off_sharp
                                  : Icons.visibility),
                          onPressed: () {
                            Get.find<ObscureController>()
                                .togglePasswordVisibility();
                          },
                        )
                      : null,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
            ));
  }
}

/*
import 'package:flutter/material.dart';


class MyTextField extends StatefulWidget {
  final TextEditingController controller;
  final bool isPassword;

  const MyTextField({
    Key? key,
    required this.controller,
    this.isPassword = false,
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isPassword ? !_showPassword : false,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        suffixIcon: widget.isPassword
            ? IconButton(
          icon: Icon(_showPassword
              ? Icons.visibility
              : Icons.visibility_off_sharp),
          onPressed: () {
            setState(() {
              _showPassword = !_showPassword;
            });
          },
        )
            : null,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(35),
        ),
      ),
    );
  }
}


 */
