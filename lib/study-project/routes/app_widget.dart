import 'package:flutter/material.dart';
import 'package:study_project/study-project/services/app_controler.dart';
import 'package:study_project/study-project/pages/home_page.dart';
import 'package:study_project/study-project/pages/login_page.dart';

class AppWidget extends StatelessWidget {
  final String title;
  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.purple,
              brightness: AppController.instance.darkTheme
                  ? Brightness.dark
                  : Brightness.light),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
