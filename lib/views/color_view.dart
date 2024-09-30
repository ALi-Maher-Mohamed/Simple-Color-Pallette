import 'package:flutter/material.dart';

class ColorView extends StatelessWidget {
  const ColorView({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color),
    );
  }
}
