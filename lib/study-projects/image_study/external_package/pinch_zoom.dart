import 'package:flutter/material.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

class PinchZoomWidget extends StatefulWidget {
  const PinchZoomWidget({super.key});

  @override
  State<PinchZoomWidget> createState() => _PinchZoomWidgetState();
}

class _PinchZoomWidgetState extends State<PinchZoomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pinch Images',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Pinch Zoom Lib',
              style: TextStyle(
                fontSize: 36,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Zoom através da lib pinch_zoom',
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: PinchZoom(
                maxScale: 4,
                onZoomStart: () {
                  print('Start zooming');
                },
                onZoomEnd: () {
                  print('Stop zooming');
                },
                child: Image.asset('lib/assets/test_image.png'),
              ),
            ),
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
