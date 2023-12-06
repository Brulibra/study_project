// import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';

class EasyImageViewer extends StatefulWidget {
  const EasyImageViewer({super.key});

  @override
  State<EasyImageViewer> createState() => _EasyImageViewerState();
}

class _EasyImageViewerState extends State<EasyImageViewer> {
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Easy Viewer Lib',
              style: TextStyle(
                fontSize: 36,
              ),
              textAlign: TextAlign.center,
            ),
            InkWell(
              onTap: () {},
              splashColor: Colors.amber,
              child: Ink.image(
                image: Image.network("https://picsum.photos/id/1001/4912/3264")
                    .image,
                fit: BoxFit.cover,
              ),
            ),
            // ElevatedButton(
            //   child: const Text("Show Single Image"),
            //   onPressed: () {
            //     showImageViewer(
            //         context,
            //         Image.network("https://picsum.photos/id/1001/4912/3264")
            //             .image,
            //         swipeDismissible: true,
            //         doubleTapZoomable: true);
            //   },
            // ),
            const Text(
              'Zoom através da lib easy_image_viewer',
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
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
