import 'package:college_project_test/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class HorizintalSpace extends StatelessWidget {
  final double value;
  const HorizintalSpace({
    super.key,
    required this.value
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  final double value;
  const VerticalSpace({
    super.key,
    required this.value
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value,
    );
  }
}
