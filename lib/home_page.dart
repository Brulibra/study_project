import 'package:flutter/material.dart';

class ProjectsHomePage extends StatefulWidget {
  const ProjectsHomePage({super.key});

  @override
  State<ProjectsHomePage> createState() => _ProjectsHomePageState();
}

class _ProjectsHomePageState extends State<ProjectsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Aplicativos de Estudo',
                      style: TextStyle(
                        fontSize: 36,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          child: const Text('Forms'),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/formsLogin');
                          },
                        ),
                        ElevatedButton(
                          child: const Text('Image Study'),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/pinchImages');
                          },
                        ),
                        ElevatedButton(
                          child: const Text('Easy Image'),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/easyImage');
                          },
                        ),
                        ElevatedButton(
                          child: const Text('Pinch Zoom'),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/pinchZoom');
                          },
                        ),
                        ElevatedButton(
                          child: const Text('Grimório'),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/grimorio');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
