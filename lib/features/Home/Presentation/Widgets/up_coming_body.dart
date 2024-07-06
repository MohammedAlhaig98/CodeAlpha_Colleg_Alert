import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class UpComingBody extends StatefulWidget {
const UpComingBody({super.key});

@override
State<UpComingBody> createState() => _UpComingBodyState();
}

class _UpComingBodyState extends State<UpComingBody> {
@override
Widget build(BuildContext context) {
return const Scaffold(
      body: Center(
        child: Text("Coming Soon...",
          style: TextStyle(
              fontSize: 35,
              color: theme_color
          ),
         textAlign: TextAlign.center,
        ),
      )
    );
  }
}
