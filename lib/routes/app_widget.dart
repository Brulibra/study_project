import 'package:flutter/material.dart';
import 'package:study_project/study-projects/forms/services/app_controler.dart';
import 'package:study_project/study-projects/forms/pages/forms_home_page.dart';
import 'package:study_project/study-projects/forms/pages/forms_login_page.dart';
import 'package:study_project/home_page.dart';
import 'package:study_project/study-projects/image_study/pinch_image_page.dart';

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
            '/': (context) => const ProjectsHomePage(),
            '/allProjects': (context) => const ProjectsHomePage(),
            '/formsLogin': (context) => const LoginPage(),
            '/formsHome': (context) => const HomePage(),
            '/pinchImages': (context) => const PinchImages(),
          },
        );
      },
    );
  }
}
