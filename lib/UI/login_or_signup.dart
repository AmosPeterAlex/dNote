import 'package:flutter/material.dart';
import 'package:project_app1/UI/create_acc.dart';
import 'package:project_app1/UI/login_options.dart';

class LoginOrSignup extends StatelessWidget {
  const LoginOrSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome to\nsBook App',
              style: TextStyle(fontSize: 42),
            ),
            SizedBox(
              height: 350,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginOptions()));
              },
              height: 50,
              minWidth: 350,
              child: Text(
                "Sign In",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              color: Colors.yellow[300],
              shape: StadiumBorder(),
              textColor: Colors.white,
            ),
            SizedBox(
              height: 22,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CreateAccount()));
              },
              height: 50,
              minWidth: 350,
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              color: Colors.yellow[300],
              shape: StadiumBorder(),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
