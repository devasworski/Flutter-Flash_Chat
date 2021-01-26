import 'package:flutter/material.dart';
import 'package:flash_chat/components/CutomWidgets.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static String routeName = "/";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: "logo",
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                Flexible(
                  child: TypewriterAnimatedTextKit(
                    text: ['Flash Chat'],
                    isRepeatingAnimation: false,
                    textStyle: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Hero(
              tag: "btn_login",
              child: RoundButton(
                  color: Colors.lightBlueAccent,
                  text: 'Log In',
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  }),
            ),
            Hero(
              tag: "btn_register",
              child: RoundButton(
                  color: Colors.blueAccent,
                  text: 'Register',
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.routeName);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
