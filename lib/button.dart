import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button {
  Button({required this.text, required this.function, required this.color});

  String text;
  void Function() function;
  Color color;

  Widget button() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: function,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
