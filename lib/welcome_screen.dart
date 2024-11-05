import 'package:flash_chat/button.dart';
import 'package:flash_chat/login_screen.dart';
import 'package:flash_chat/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  static const id = '/welcome';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  late Animation animationColor;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);

    animation = Tween(begin: 0.0, end: 60.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));

    animationColor =
        ColorTween(begin: Colors.grey, end: Colors.white).animate(controller);

    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: animationColor.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: animation.value,
                  ),
                ),
                DefaultTextStyle(
                  style: const TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                  child: AnimatedTextKit(
                    pause: const Duration(seconds: 5),
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText('Flash Chat',
                          speed: Duration(milliseconds: 500)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            Button(
                color: Colors.lightBlueAccent,
                text: 'Log In',
                function: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                }).button(),
            Button(
                color: Colors.blueAccent,
                text: 'Register',
                function: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                }).button(),
          ],
        ),
      ),
    ));
  }
}

// Padding(
// padding: const EdgeInsets.symmetric(vertical: 16.0),
// child: Material(
// color: Colors.blueAccent,
// borderRadius: BorderRadius.circular(30.0),
// elevation: 5.0,
// child: MaterialButton(
// onPressed: () {
// Navigator.pushNamed(context, RegistrationScreen.id);
// },
// minWidth: 200.0,
// height: 42.0,
// child: const Text(
// 'Register',
// ),
// ),
// ),
// ),
