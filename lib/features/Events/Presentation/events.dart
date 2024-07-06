import 'package:flutter/material.dart';

import '../../../core/constants.dart';
class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Events",
          style: TextStyle(
              fontSize: 35,
              color: theme_color
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
