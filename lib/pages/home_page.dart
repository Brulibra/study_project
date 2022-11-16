import 'package:flutter/material.dart';

import '../utils/dark_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int couter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page Title"),
        actions: const [CustomSwitch()],
      ),
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomSwitch(),
                Container(
                  height: 10,
                ),
                const Text('Um botão switch e um contador'),
                Container(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      color: Colors.amber,
                    ),
                    Text("Contando $couter"),
                    Container(
                      height: 10,
                      width: 10,
                      color: Colors.blue,
                    )
                  ],
                ),
              ])),
      floatingActionButton: FloatingActionButton(
          onPressed: (() {
            setState(() {
              couter++;
            });
          }),
          child: const Icon(Icons.add)),
    );
  }
}
