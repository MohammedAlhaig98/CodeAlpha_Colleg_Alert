import 'package:college_project_test/core/utils/size_config.dart';
import 'package:college_project_test/features/SignIn/Presentation/Widgets/sing_in_body.dart';
import 'package:flutter/material.dart';
class SingIn extends StatelessWidget {
  const SingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingInBody(),
      ),
    );
  }
}
