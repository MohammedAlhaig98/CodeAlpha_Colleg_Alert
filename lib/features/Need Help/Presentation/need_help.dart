import 'package:college_project_test/features/Need%20Help/Presentation/Widgets/need_help_body.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';
class NeedHelp extends StatelessWidget {
  const NeedHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: NeedHelpBody()
      ),
    );
  }
}
