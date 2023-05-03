import 'package:flutter/material.dart';

class AspectRatioWidget extends StatefulWidget {
  const AspectRatioWidget({super.key});

  @override
  State<AspectRatioWidget> createState() => _AspectRatioWidgetState();
}

class _AspectRatioWidgetState extends State<AspectRatioWidget>
    with SingleTickerProviderStateMixin {
  late TransformationController controller;
  late AnimationController animationController;
  Animation<Matrix4>? animation;

  @override
  void initState() {
    super.initState();
    controller = TransformationController();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(microseconds: 200),
    )..addListener(
        () {
          controller.value = animation!.value;
        },
      );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    animationController.dispose();
  }

  final double minScale = 1;
  final double maxScale = 4;
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      clipBehavior: Clip.none,
      maxScale: maxScale,
      minScale: minScale,
      panEnabled: false,
      onInteractionEnd: (details) {
        resetAnimation();
      },
      child: AspectRatio(
        aspectRatio: 1,
        child: ClipRRect(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset('lib/assets/test_image.png'),
          ),
        ),
      ),
    );
  }

  void resetAnimation() {
    animation = Matrix4Tween(
      begin: controller.value,
      end: Matrix4.identity(),
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.bounceIn,
      ),
    );
    animationController.forward(from: 0);
  }
}
