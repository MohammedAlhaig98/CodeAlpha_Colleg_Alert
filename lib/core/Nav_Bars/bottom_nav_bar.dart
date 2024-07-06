import 'package:college_project_test/core/constants.dart';
import 'package:college_project_test/features/Chat/Presentation/chat.dart';
import 'package:college_project_test/features/Events/Presentation/events.dart';
import 'package:college_project_test/features/Need%20Help/Presentation/need_help.dart';
import 'package:flutter/material.dart';
import '../../features/Home/Presentation/home.dart';
import '../../features/Notification/Presentation/notification.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int _currentIndex =0;
  final screens =[
    const Home(),
    const Notifications(),
    const Chat(),
    const NeedHelp(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: MotionTabBar(
        initialSelectedTab: "Home",
        labels: const ["Home", "Notification","Chat","Need Help"],
        icons: const [
          Icons.home,
          Icons.notifications,
          Icons.chat,
          Icons.help_center,
        ],
        textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold
        ),
        tabSelectedColor: Colors.white,
        tabIconSelectedColor: theme_color,
        tabIconColor: unselected_icons,
        tabBarColor: theme_color,
        onTabItemSelected: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
