import 'package:azkar_app/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
          onPressed: () async {
            print(await Permission.notification.status);
            if (await Permission.notification.request().isGranted) {
              // Either the permission was already granted before or the user just granted it.
              NotificationService().showNotification();
            }
          },
          child: Text('Send Notification'),
        ),
      ),
    );
  }
}
