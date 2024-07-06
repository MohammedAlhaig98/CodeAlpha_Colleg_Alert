import 'package:flutter/material.dart';
import '../../../../core/constants.dart';
import '../../../../core/size_constants.dart';
import '../../../../core/utils/size_config.dart';

class AddCard extends StatelessWidget {
  final Function()? onTap;
  const AddCard({
    super.key,
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
        child: Container(
          width: 160,
          height: 133.5,
          decoration: const  ShapeDecoration(
            color: theme_color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          child: Column(
            children: [
              const VerticalSpace(value: 0.5),
              Container(
                width: 80, // Slightly larger to accommodate the background
                height: 80, // Slightly larger to accommodate the background
                decoration: const BoxDecoration(
                  color: Colors.white, // Background color
                  shape: BoxShape.circle, // Circular shape
                ),
                child: ClipOval(
                  child: Center(
                    child: Image.asset(
                      'assets/images/add_event.png', // Replace with your image asset path
                      width: 50,
                      height: 50,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              const VerticalSpace(value: 0.4),
              const Text("Add Events",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
    );
  }
}
