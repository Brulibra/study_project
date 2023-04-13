import 'package:flutter/material.dart';

class PinchImages extends StatefulWidget {
  const PinchImages({super.key});

  @override
  State<PinchImages> createState() => _PinchImagesState();
}

class _PinchImagesState extends State<PinchImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Não há nada aqui por enquanto',
            style: TextStyle(
              fontSize: 36,
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
    );
  }
}
