// Notification Controller

import 'package:awesome_notifications/awesome_notifications.dart';

class NotificationController{
  @pragma('vm:entry-point')
  static Future<void> onNotificationCreateMethod(
      ReceivedNotification receiveNotification) async {}

  @pragma("vm:entry-point")
  static Future<void> onNotificationDisplayMethod(
      ReceivedNotification receiveNotification) async {}

  @pragma("vm:entry-point")
  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receiveAction) async {}

  @pragma("vm:entry-point")
  static Future<void> onActionReceivedMethod(
      ReceivedAction receiveAction) async {}
}