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
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('data'),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: const Text('Forms'),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/formsLogin');
                          },
                        ),
                        ElevatedButton(
                          child: const Text('Bank App'),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/formsLogin');
                          },
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
