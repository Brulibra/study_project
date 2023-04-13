import 'package:flutter/material.dart';

class AspectRatioWidget extends StatefulWidget {
  const AspectRatioWidget({super.key});

  @override
  State<AspectRatioWidget> createState() => _AspectRatioWidgetState();
}

// @override
// void initState() {
//   controller = TransformationController();
//   animationController = AnimationController(
//     vsync: this,
//     duration: const Duration(microseconds: 200),
//   );
// }
// late TransformationController controller;
// late AnimationController animationController;
// Animation<Matrix4>? animation;

class _AspectRatioWidgetState extends State<AspectRatioWidget> {
  final double minScale = 1;
  final double maxScale = 4;
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      clipBehavior: Clip.none,
      maxScale: maxScale,
      minScale: minScale,
      panEnabled: false,
      child: AspectRatio(
        aspectRatio: 1,
        child: ClipRRect(
          child: SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('lib/assets/images/form_logo.png'),
          ),
        ),
      ),
    );
  }
}
