import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double heigth = 50;
  Color color = Colors.indigo;
  double borderRadius = 10.0;

  void changeShape() {
    final random = Random();
    width = random.nextInt(300) + 120;
    heigth = random.nextInt(300) + 120;
    borderRadius = random.nextInt(100) + 20;
    color = Color.fromRGBO(
        random.nextInt(255), //red
        random.nextInt(255), //green
        random.nextInt(255), //bue
        1 //opacidad
        );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.elasticOut,
          width: width <= 0 ? 0 : width,
          height: heigth <= 0 ? 0 : heigth,
          decoration: BoxDecoration(
              color: color,
              borderRadius:
                  BorderRadius.circular(borderRadius < 0 ? 0 : borderRadius)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
