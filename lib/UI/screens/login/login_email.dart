import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app1/UI/screens/home/bottom_nav.dart';
import 'package:project_app1/UI/screens/login/create_acc.dart';
import 'package:project_app1/UI/utils/my_colors.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // const LoginPage({super.key});
  bool showPass = true;

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
                ' Hello\nAgain!',
                style: GoogleFonts.cinzel(
                  fontSize: 42,
                  color: myLavender,
                ),
              ),
              SizedBox(
                height: 130,
              ),
              ListTile(
                title: Text(
                  ' Email',
                  style: GoogleFonts.asapCondensed(
                      fontSize: 22,
                      color: myLavender,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.7),
                ),
                subtitle: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Password',
                  style: GoogleFonts.asapCondensed(
                      fontSize: 22,
                      color: myLavender,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.7),
                ),
                subtitle: TextField(
                  obscuringCharacter: '*',
                  obscureText: showPass,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    //getx controller il ini kodukenm
                    suffixIcon: IconButton(
                      icon: Icon(showPass == true
                          ? Icons.visibility_off_sharp
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          if (showPass == true) {
                            showPass = false;
                          } else {
                            showPass = true;
                          }
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              MaterialButton(
                onPressed: () {
                  Get.to(() => BottomNavPage());
                },
                height: 50,
                minWidth: 200,
                child: Text(
                  "Log In",
                  style: GoogleFonts.kalam(fontSize: 24, color: Colors.black),
                ),
                color: myYellow,
                shape: StadiumBorder(),
                textColor: Colors.white,
              ),
              SizedBox(
                height: 18,
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
                          Get.to(() => CreateAccount());
                        },
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: myLavender,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: .3),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'Forgot Password?',
                style: GoogleFonts.lato(color: Colors.white, fontSize: 16),
              ),
              InkWell(
                child: Text(
                  "Reset",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffdcc1ff),
                      fontStyle: FontStyle.italic),
                ),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
