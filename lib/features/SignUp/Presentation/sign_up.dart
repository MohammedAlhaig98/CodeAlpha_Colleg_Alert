import 'package:college_project_test/features/SignUp/Presentation/Widgets/sign_up_body.dart';
import 'package:flutter/material.dart';
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body:SignUpBody()
      ),
    );
  }
}
