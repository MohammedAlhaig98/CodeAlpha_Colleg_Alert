import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_constants.dart';
class SecondTopNavBar extends StatelessWidget {

  // Title for each page
  final String pageTitle;

  const SecondTopNavBar({
    super.key,
    required this.pageTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: const BoxDecoration( // Decoration for top bar
        color: theme_color,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(140)
        ),
      ),
      child: Row(
        children: [

            // Arrow Icon design
            Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Expanded(
              child: Column(
                children: [
                  const VerticalSpace(value:0.7),
                  IconButton(
                      icon: const Icon(
                        Icons.arrow_back, // Name of icons comes from database of flutter
                        color: Colors.white,
                        size: 35,
                      ),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                  ),
                ],
              ),
            ),
          ),
          const HorizintalSpace(value: 0.3), //Space between the arrow and title

          //Page Title Style
          Padding(
            padding: const EdgeInsets.symmetric(),
            child: Expanded(
              child: Column(
                children: [
                  const VerticalSpace(value: 1),
                  Text(
                    pageTitle, //Enter the name everytime you call the class
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
