import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
class NotificationBody extends StatefulWidget {
  const NotificationBody({super.key});

  @override
  State<NotificationBody> createState() => _NotificationBodyState();
}

class _NotificationBodyState extends State<NotificationBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          AwesomeNotifications().createNotification(
              content: NotificationContent(
                id: 2,
                channelKey: "basic_channel",
                title: "Graduation",
                body: "Graduation Party on 10/07/2024 at 10:00AM ! Don't miss it! 🎓",
            )
          );
        },
        child: const Icon(
            Icons.notification_add
        ),
      ),
    );
  }
}
