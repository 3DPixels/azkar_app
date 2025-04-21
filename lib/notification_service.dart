import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  final notifications = FlutterLocalNotificationsPlugin();
  bool _isInitialized = false;

  bool get isInitialized => _isInitialized;

  Future<void> initialize() async {
    if (_isInitialized) return;

    final android = AndroidInitializationSettings('@mipmap/ic_launcher');

    await notifications.initialize(InitializationSettings(android: android));
    _isInitialized = true;
  }

  Future<void> showNotification() async {
    final notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        'daily_notification',
        'Daily Notification',
        // importance: Importance.max,
        // priority: Priority.high,
      ),
    );

    notifications.show(0, 'title2', 'body2', notificationDetails);
  }
}
