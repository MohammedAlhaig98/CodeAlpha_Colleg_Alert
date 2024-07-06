import 'package:flutter/material.dart';
import '../../../../core/Nav_Bars/second_top_nav_bar.dart';
import '../../../../core/constants.dart';
import '../../../../core/size_constants.dart';
class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SecondTopNavBar(pageTitle: 'Chat'),
          const VerticalSpace(value: 3.5),
          Image.asset('assets/images/users.png',
            width: 300,
            color: theme_color,),
          const VerticalSpace(value: 2.5),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.2),
            child: Text('You have not invited to any Group yet. If you are invited in future, you will see here.',
              style: TextStyle(
                fontSize:30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
