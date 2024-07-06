import 'package:college_project_test/core/Nav_Bars/top_nav_bar.dart';
import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          TopNavBar(
              collegeName: "HKBK DEGREE COLLEGE",
              studentName: "Mohammed Alhaig",
              studentId: "R2015825",
              showButton: false
          )
        ],
      ),
    );
  }
}
