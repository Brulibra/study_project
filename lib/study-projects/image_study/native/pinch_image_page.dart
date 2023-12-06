import 'package:flutter/material.dart';
import 'package:study_project/study-projects/image_study/native/aspect_ratio_widget.dart';

class PinchImages extends StatefulWidget {
  const PinchImages({super.key});

  @override
  State<PinchImages> createState() => _PinchImagesState();
}

class _PinchImagesState extends State<PinchImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pinch Images'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              children: [
                Text(
                  'Aspect Ratio',
                  style: TextStyle(
                    fontSize: 36,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Zoom através do método nativo do flutter',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const AspectRatioWidget(),
            ElevatedButton(
              child: const Text('Voltar'),
              onPressed: () {
                Navigator.of(context).pushNamed('/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
