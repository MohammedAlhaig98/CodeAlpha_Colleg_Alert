import 'package:college_project_test/core/utils/size_config.dart';
import 'package:flutter/material.dart';
class CustomGoogleButton extends StatelessWidget {
  final Function()? onTap;
  final double borderRaduis;
  const CustomGoogleButton({
    super.key,
    required this.borderRaduis,
    required this.onTap,
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
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child:Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.asset('assets/images/google.png',
                    width: 25,
                    height: 25,),
                ),
                const Text("Sign In with Google",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
