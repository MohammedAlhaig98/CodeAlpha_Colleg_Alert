import 'package:college_project_test/core/size_constants.dart';
import 'package:flutter/material.dart';
class CustomTextButton extends StatelessWidget {

  final String buttonText;
  final String mainText;
  final Function()? onTap;

  const CustomTextButton({
    super.key,
    required this.buttonText,
    required this.mainText,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
           mainText,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
          const HorizintalSpace(value: 0.2),
          GestureDetector(
            onTap: onTap,
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 12
              ),
            ),
          )
      ],
    );
  }
}
