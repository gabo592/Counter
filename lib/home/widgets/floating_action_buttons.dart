import 'package:flutter/material.dart';

class FloatingActionButtons extends StatelessWidget {
  final VoidCallback increaseCounter;
  final VoidCallback decreaseCounter;
  final VoidCallback resetCounter;

  const FloatingActionButtons(
      {super.key,
      required this.increaseCounter,
      required this.decreaseCounter,
      required this.resetCounter});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: FloatingActionButton(
            onPressed: resetCounter,
            child: const Icon(Icons.refresh),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: FloatingActionButton(
            onPressed: decreaseCounter,
            child: const Icon(Icons.exposure_minus_1),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: FloatingActionButton(
            onPressed: increaseCounter,
            child: const Icon(Icons.exposure_plus_1),
          ),
        ),
      ],
    );
  }
}
