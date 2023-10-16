library my_sample_package;

import 'package:flutter/material.dart';

class ColouredContainer extends StatelessWidget {
  const ColouredContainer({
    super.key,
    this.containerColor,
    required this.child,
  });

  final Color? containerColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: containerColor ?? Colors.blue.withOpacity(0.7),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: child,
      ),
    );
  }
}
