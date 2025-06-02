import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';


class ColorChangeScreen extends StatefulWidget {
  const ColorChangeScreen({super.key});

  @override
  State<ColorChangeScreen> createState() {
    return _ColorChangeScreen();
  }
}

class _ColorChangeScreen extends State<ColorChangeScreen> {
  Color backgroundColor = Color.fromARGB(255, 152, 226, 239);

  void changeColor() {
    final random = Random();
    setState(() {
      backgroundColor = Color.fromARGB(
        255,
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeColor,
      child: Scaffold(
        body: AnimatedContainer(
          duration: Duration(milliseconds: 700),
          curve: Curves.decelerate,
          color: backgroundColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello there :)',
                  style: GoogleFonts.montserrat(fontSize: 32,
                      color: Colors.black),
                ),
                SizedBox(height: 20),
                Text(
                  'RGB: (${backgroundColor.red}, ${backgroundColor.green}, ${backgroundColor.blue})',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
