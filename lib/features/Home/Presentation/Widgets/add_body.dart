import 'package:college_project_test/core/Nav_Bars/second_top_nav_bar.dart';
import 'package:college_project_test/core/size_constants.dart';
import 'package:college_project_test/features/Home/Presentation/Event_Calendars/add_event_Calednar.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants.dart';

class AddBody extends StatefulWidget {
  const AddBody({super.key});

  @override
  State<AddBody> createState() => _AddBodyState();
}

class _AddBodyState extends State<AddBody> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: AddEventCalendar()
    );
  }
}
