import 'package:college_project_test/features/Notification/Presentation/Widgets/notification_body.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';
class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: NotificationBody()
    );
  }
}
