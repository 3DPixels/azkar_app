import 'package:azkar_app/pages/about_page.dart';
import 'package:azkar_app/providers/local_cubit/local_cubit.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الرئيسية')),
      body: Center(
        child: FilledButton(
          onPressed: () async {
            // LocalCubit.get(context).changeTheme();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutScreen()),
            );
          },
          child: Text('Send Notification'),
        ),
      ),
    );
  }
}
