import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final controller;
  final String labelText;
  final bool obscureText;
  final double fieldSize;

  const CustomTextfield({
    super.key,
    required this.controller,
    required this.labelText,
    required this.obscureText,
    required this.fieldSize
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: fieldSize),
      child: TextField(
        controller:controller,
        obscureText:obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)
          ),
          fillColor: Colors.white,
          filled: true,
          labelText: labelText,
          labelStyle: const TextStyle(
            color:Color.fromARGB(255, 182, 36, 36),
          ),
        ),
      ),
    );
  }
}

