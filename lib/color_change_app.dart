import 'package:flutter/material.dart';
import 'package:rainbow_test_task/color_change_screen.dart';
class ColorChangeApp extends StatelessWidget {
  const ColorChangeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'rainbow test task',
        home: ColorChangeScreen()
    );
  }
}