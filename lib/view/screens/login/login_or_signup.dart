import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app1/core/constants/color_constants.dart';
import 'package:project_app1/view/screens/login/create_acc.dart';
import 'package:project_app1/view/screens/login/login_options.dart';
import 'package:project_app1/view/screens/login/widgets/my_material_button.dart';
import 'package:project_app1/view/utils/my_colors.dart';

class LoginOrSignup extends StatelessWidget {
  // const LoginOrSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text('Welcome to\n  sNote App',
                style: GoogleFonts.cinzel(
                    //nala oru font kity ila
                    fontSize: 40,
                    color: ColorConstants.lavender)),
            SizedBox(
              height: 350,
            ),
            MyMaterialButton(
                buttonText: 'Log In',
                buttonPressed: () {
                  Get.to(() => LoginOptions());
                },
                myColor: ColorConstants.yellow),
            // MaterialButton(
            //   onPressed: () {
            //     Get.to(() => LoginOptions());
            //   },
            //   height: 50,
            //   minWidth: 350,
            //   color: myYellow,
            //   shape: StadiumBorder(),
            //   textColor: Colors.white,
            //   child: Text("Log In",
            //       style: GoogleFonts.kalam(fontSize: 24, color: Colors.black)),
            // ),
            SizedBox(
              height: 10,
            ),
            MyMaterialButton(
                buttonText: 'Create Account',
                buttonPressed: () {
                  Get.to(() => CreateAccount());
                },
                myColor: ColorConstants.lavender)
            // MaterialButton(
            //   onPressed: () {
            //     Get.to(
            //       () => CreateAccount(),
            //     );
            //   },
            //   height: 50,
            //   minWidth: 350,
            //   child: Text(
            //     "Create Account",
            //     style: GoogleFonts.kalam(fontSize: 24, color: Colors.black),
            //   ),
            //   color: myLavender,
            //   shape: StadiumBorder(),
            //   textColor: Colors.white,
            // ),
          ],
        ),
      ),
    );
  }
}
