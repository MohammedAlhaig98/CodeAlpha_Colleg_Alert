import 'package:college_project_test/core/constants.dart';
import 'package:college_project_test/core/size_constants.dart';
import 'package:flutter/material.dart';
import '../../features/Home/Presentation/Widgets/profile.dart';

class TopNavBar extends StatelessWidget {

  //Variables
  final String collegeName;
  final String studentName;
  final String studentId;
  final bool showButton;

  const TopNavBar({
    super.key,
    required this.collegeName,
    required this.studentName,
    required this.studentId,
    required this.showButton
  });
  @override
  Widget build(BuildContext context) {
    return Container(
  width: double.infinity,
  height: 244,
  decoration: const BoxDecoration(
    color: theme_color,
    borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(140)
    ),
  ),
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              //Left Section
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 1.5), // Margin on the left
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //College Name
                        Text(
                          collegeName,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                        const VerticalSpace(value: 0.5),

                        //Student Name
                        Text(
                          studentName,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                        const VerticalSpace(value: 0.5),

                        //Id Number
                        Text(
                          studentId,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),


              // Right section for image with margin on the right
               Column(
                 children: [
                   Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(1.5),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Colors.white, // Background color
                              shape: BoxShape.circle, // Circular shape
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/male_student.png',
                                width: 75,
                                height: 75,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
              ],
            ),
          ),
          const VerticalSpace(value: 1.5),

          // Make Input Optional to show
          if (showButton)
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Profile()
                    )
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                foregroundColor: theme_color, //Text Color
                backgroundColor: Colors.white, //Background color
              ),
              child: const Text('Profile',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
