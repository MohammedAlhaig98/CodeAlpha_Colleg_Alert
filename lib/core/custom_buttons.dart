import 'package:college_project_test/core/constants.dart';
import 'package:college_project_test/core/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomButtons extends StatelessWidget {

  final double borderRaduis;
  final String text;
  final Function()? onTap;

  const CustomButtons({
    super.key,
    required this.borderRaduis,
    required this.text,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Container(
          height: 60,
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
            color: theme_color,
            borderRadius: BorderRadius.circular(borderRaduis)
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 22,
                color: Color(0xffffffff),
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
