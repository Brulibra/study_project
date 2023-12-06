import 'package:flutter/material.dart';

import '../study-projects/forms/services/app_controler.dart';
import '../study-projects/forms/pages/forms_home_page.dart';
import '../study-projects/forms/pages/forms_login_page.dart';
import '../home_page.dart';
import '../study-projects/grimorio/main.dart';
import '../study-projects/image_study/external_package/pinch_zoom.dart';
import '../study-projects/image_study/native/pinch_image_page.dart';

import '../study-projects/image_study/external_package/easy_image_viewer.dart';

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
            '/easyImage': (context) => const EasyImageViewer(),
            '/pinchZoom': (context) => const PinchZoomWidget(),
            '/grimorio':(context) => const Grimorio()
          },
        );
      },
    );
  }
}
