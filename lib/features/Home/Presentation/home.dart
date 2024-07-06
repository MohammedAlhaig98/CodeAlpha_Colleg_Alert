import 'package:college_project_test/core/Nav_Bars/bottom_nav_bar.dart';
import 'package:college_project_test/features/Home/Presentation/Widgets/home_body.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  //This is test
  //this is second test
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
          body: HomeBody(),
        )
    );
  }
}
