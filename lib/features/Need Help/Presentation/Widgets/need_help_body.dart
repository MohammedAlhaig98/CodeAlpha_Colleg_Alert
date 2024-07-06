import 'package:college_project_test/core/Nav_Bars/second_top_nav_bar.dart';
import 'package:college_project_test/core/size_constants.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants.dart';
class NeedHelpBody extends StatefulWidget {
  const NeedHelpBody({super.key});

  @override
  State<NeedHelpBody> createState() => _NeedHelpBodyState();
}

class _NeedHelpBodyState extends State<NeedHelpBody> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Coming Soon...",
        style: TextStyle(
            fontSize: 35,
            color: theme_color
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
