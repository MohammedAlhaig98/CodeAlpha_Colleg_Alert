import 'package:college_project_test/core/Nav_Bars/top_nav_bar.dart';
import 'package:college_project_test/features/Home/Presentation/Event_Calendars/non_active_calender.dart';
import 'package:college_project_test/core/size_constants.dart';
import 'package:college_project_test/features/Home/Presentation/Cards/add_card.dart';
import 'package:college_project_test/core/up_coming_event.dart';
import 'package:college_project_test/features/Home/Presentation/Widgets/add_body.dart';
import 'package:college_project_test/features/Home/Presentation/Widgets/up_coming_body.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {


    //Methods
    void moveToAddEvent(){
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) => const AddBody()
            )
        );
      });
    }
    void moveToUpComingEvent(){
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) => const UpComingBody()
            )
        );
      });
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Top Nav Bar
            const TopNavBar(
                collegeName: "Top College",
                studentName: "Mohammed Abdullah",
                studentId: "CF120210",
                showButton: true,
            ),
            const VerticalSpace(value: 0.4),

            //Event Options
           Row(
              children: [
                const Spacer(flex: 2,),

                //Add and Remove event
                Expanded(
                  flex: 5,
                    child: AddCard(
                      onTap: moveToAddEvent,
                    ),
                ),

                //UpComing Event
                const Spacer(flex: 2,),
                Expanded(
                  flex: 5,
                    child: UpComingEvent(
                      onTap: moveToUpComingEvent,
                    )
                ),
                const Spacer(flex: 2,),
              ],
            ),
            const VerticalSpace(value: 1.5),

            // Calender
            const NonActiveCalender(),
            const VerticalSpace(value: 2.8)
          ],
        ),
      ),
    );
  }
}
