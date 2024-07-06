import 'package:college_project_test/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
class NonActiveCalender extends StatelessWidget {
  const NonActiveCalender({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: SizeConfig.screenWidth! * 0.9,
        child: Container(
          decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1),
            ),
          ),
          child: TableCalendar(
            rowHeight: 40,
            headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true
            ),
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
          ),
        ),
      ),
    );
  }
}
