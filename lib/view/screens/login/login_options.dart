import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app1/core/constants/color_constants.dart';
import 'package:project_app1/firebase_my_auth_func.dart';
import 'package:project_app1/view/screens/login/create_acc.dart';
import 'package:project_app1/view/screens/login/login_email.dart';
import 'package:project_app1/view/screens/login/widgets/my_material_button.dart';
import 'package:project_app1/view/utils/my_colors.dart';

class LoginOptions extends StatelessWidget {
  // const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),

              ///TODO textfield and materialButton oke refractor akenm
              ///logout inu mune alertbox veranm
              ///mediaquery de kariyam nadakumo enn noeknm

              Text(
                'Log in\n  with', //google font req
                style: GoogleFonts.cinzel(fontSize: 42, color: ColorConstants.lavender),
              ),
              SizedBox(
                height: 200,
              ),
              MyMaterialButton(
                  buttonText: 'Login with Email',
                  buttonPressed: () {Get.to(() => LoginPage());},
                  myColor: ColorConstants.yellow),
              // MaterialButton(
              //   onPressed: () {
              //     Get.to(() => LoginPage());
              //   },
              //   height: 55,
              //   minWidth: 350,
              //   color: Colors.yellow[300],
              //   //edh myYellow itt nokenm
              //   shape: StadiumBorder(),
              //   child: ListTile(
              //     title: Center(
              //       child: Text(
              //         "Login with Email",
              //         style: GoogleFonts.kalam(
              //           fontSize: 24,
              //           color: Colors.black,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 22,
              ),
              MyMaterialButton(
                  buttonText: 'Login with Google',
                  buttonPressed: () async{
                    UserCredential? userCredential =
                    await FirebaseHelper().handleSignIn();
                    if (userCredential != null) {
                      print(
                          'Successfully signed in with Google: ${userCredential.user!.displayName}');
                      FirebaseHelper().navigateToHome(userCredential.user);
                    } else {
                      print('Google Sign-In failed');
                    }
                  },
                  myColor: ColorConstants.red),
              // MaterialButton(
              //   onPressed: () async {
              //     UserCredential? userCredential =
              //         await FirebaseHelper().handleSignIn();
              //     if (userCredential != null) {
              //       print(
              //           'Successfully signed in with Google: ${userCredential.user!.displayName}');
              //       FirebaseHelper().navigateToHome(userCredential.user);
              //     } else {
              //       print('Google Sign-In failed');
              //     }
              //   },
              //
              //   height: 55,
              //   minWidth: 350,
              //   color: myYellow,
              //   shape: StadiumBorder(),
              //   child: ListTile(
              //     title: Center(
              //       child: Text(
              //         "Login with Google",
              //         style:
              //             GoogleFonts.kalam(fontSize: 24, color: Colors.black),
              //       ),
              //     ),
              //   ),
              //   // textColor: Colors.white,
              // ),
              SizedBox(
                height: 22,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                      text: "Don't Have an Account? \t",
                      style: TextStyle(letterSpacing: .5),
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: InkWell(
                        onTap: () {
                          Get.to(
                            () => CreateAccount(),
                          );
                        },
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Color(0xffdcc1ff),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: .3,
                          ),
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
