import 'package:color_screen/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ColorApp());
}

class ColorApp extends StatelessWidget {
  const ColorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
