import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app1/core/constants/color_constants.dart';
import 'package:project_app1/view/screens/home/bottom_nav.dart';
import 'package:project_app1/view/screens/login/login_options.dart';
import 'package:project_app1/view/screens/login/widgets/my_material_button.dart';
import 'package:project_app1/view/screens/login/widgets/my_textfield.dart';
import 'package:project_app1/view/utils/my_colors.dart';

import '../../../firebase_my_auth_func.dart';

class CreateAccount extends StatefulWidget {
  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool showPass = true;
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                '  Create\nAccount',
                style: GoogleFonts.cinzel(fontSize: 42, color: ColorConstants.lavender),
              ),
              SizedBox(
                height: 50,
              ),
              MyTextField(
                  textFieldHeading: 'Email', controller: emailController),
              MyTextField(
                textFieldHeading: 'Password',
                controller: passController,
                isPassword: true,
              ),
              // ListTile(
              //   title: Text(
              //     'Username',
              //     style: GoogleFonts.asapCondensed(
              //         fontSize: 22,
              //         color: myLavender,
              //         fontWeight: FontWeight.w400,
              //         letterSpacing: 1.5),
              //   ),
              //   subtitle: TextField(
              //     decoration: InputDecoration(
              //       fillColor: Colors.white,
              //       filled: true,
              //       border: OutlineInputBorder(
              //         borderSide: BorderSide.none,
              //         borderRadius: BorderRadius.circular(35),
              //       ),
              //     ),
              //   ),
              // ),
              // ListTile(
              //   title: Text(
              //     'Email',
              //     style: GoogleFonts.asapCondensed(
              //         fontSize: 22,
              //         color: myLavender,
              //         fontWeight: FontWeight.w400,
              //         letterSpacing: 1.5),
              //   ),
              //   subtitle: MyTextField(controller: emailController),
              // subtitle: TextField(
              //   controller: emailController,
              //   decoration: InputDecoration(
              //     filled: true,
              //     fillColor: Colors.white,
              //     border: OutlineInputBorder(
              //       borderSide: BorderSide.none,
              //       borderRadius: BorderRadius.circular(35),
              //     ),
              //   ),
              // ),
              // ),
              // ListTile(
              //   title: Text(
              //     'Password',
              //     style: GoogleFonts.asapCondensed(
              //         fontSize: 22,
              //         color: myLavender,
              //         fontWeight: FontWeight.w400,
              //         letterSpacing: 1.5),
              //   ),
              //   subtitle: MyTextField(controller: passController,isPassword: true),
              // subtitle: TextField(
              //   controller: passController,
              //   obscureText: showPass,
              //   obscuringCharacter: '*',
              //   decoration: InputDecoration(
              //     fillColor: Colors.white,
              //     filled: true,
              //     suffixIcon: IconButton(
              //       icon: Icon(showPass == true
              //           ? Icons.visibility_off_sharp
              //           : Icons.visibility),
              //       onPressed: () {
              //         setState(() {
              //           if (showPass == true) {
              //             showPass = false;
              //           } else {
              //             showPass = true;
              //           }
              //         });
              //       },
              //     ),
              //     border: OutlineInputBorder(
              //       borderSide: BorderSide.none,
              //       borderRadius: BorderRadius.circular(35),
              //     ),
              //   ),
              // ),
              // ),
              SizedBox(
                height: 18,
              ),

              MyMaterialButton(
                  buttonText: 'Create Account',
                  buttonPressed: () {
                    String email = emailController.text.trim();
                    String pass = passController.text.trim();
                    FirebaseHelper()
                        .registerUser(email: email, pass: pass)
                        .then((value) {
                      //then callback is used to handle the result of the registration
                      if (value == null) {
                        Get.to(() => BottomNavPage());
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => LoginPage()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.redAccent,
                            content: Text(value)));
                      }
                    });
                  },
                  myColor: ColorConstants.yellow),

              // MaterialButton(
              //   onPressed: () {
              //     String email = emailController.text.trim();
              //     String pass = passController.text.trim();
              //     FirebaseHelper()
              //         .registerUser(email: email, pass: pass)
              //         .then((value) {
              //       //then callback is used to handle the result of the registration
              //       if (value == null) {
              //         Get.to(() => BottomNavPage());
              //         // Navigator.push(
              //         //     context,
              //         //     MaterialPageRoute(
              //         //         builder: (context) => LoginPage()));
              //       } else {
              //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //             backgroundColor: Colors.redAccent,
              //             content: Text(value)));
              //       }
              //     });
              //   },
              //   height: 50,
              //   minWidth: 280,
              //   child: Text(
              //     "Create Account",
              //     style: GoogleFonts.kalam(fontSize: 24, color: Colors.black),
              //   ),
              //   color: myYellow,
              //   shape: StadiumBorder(),
              //   textColor: Colors.white,
              // ),
              SizedBox(
                height: 18,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                      text: "I already have an Account? \t",
                      style: TextStyle(letterSpacing: .5),
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: InkWell(
                        onTap: () {
                          Get.to(() => LoginOptions());
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: ColorConstants.lavender,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: .3),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
