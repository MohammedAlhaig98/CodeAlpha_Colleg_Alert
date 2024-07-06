import 'package:flutter/material.dart';
import 'features/Notification/Presentation/Widgets/notification_controller.dart';
import 'features/splash/presentation/splash_screen.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

Future<void> main() async {
 
  await AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
          channelKey: "basic_channel",
          channelName: "Basic Notification",
          channelDescription: "Test Notification Channel",
          channelGroupKey: "basic_channel_group",
      ),
    ],
    channelGroups: [
      NotificationChannelGroup(
          channelGroupKey: "basic_channel_group",
          channelGroupName: "Basic Group"
      ),
    ]
  );
  bool isAllowedToSendNotification =
       await AwesomeNotifications().isNotificationAllowed();
  if(isAllowedToSendNotification){
    AwesomeNotifications().requestPermissionToSendNotifications();
  }

  runApp(const CollegeAlert());
}
class CollegeAlert extends StatefulWidget {
  const CollegeAlert({super.key});

  @override
  State<CollegeAlert> createState() => _CollegeAlertState();
}

class _CollegeAlertState extends State<CollegeAlert> {

  @override
  void initState() {
    AwesomeNotifications().setListeners(
        onActionReceivedMethod:
          NotificationController.onActionReceivedMethod,
        onNotificationCreatedMethod:
          NotificationController.onNotificationCreateMethod,
        onNotificationDisplayedMethod:
          NotificationController.onNotificationDisplayMethod,
        onDismissActionReceivedMethod:
          NotificationController.onDismissActionReceivedMethod,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
