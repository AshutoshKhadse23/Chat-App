import 'package:flash_chat/button.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  static const id = '/registration';

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration:
                  kInputDecoration.copyWith(hintText: 'Enter your email'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration:
                  kInputDecoration.copyWith(hintText: 'Enter your password'),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Button(
                    text: 'Register',
                    function: () {
                      //Implement registration functionality.
                    },
                    color: Colors.blueAccent)
                .button(),
          ],
        ),
      ),
    );
  }
}
