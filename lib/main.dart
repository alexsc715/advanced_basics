import "package:flutter/material.dart";
import "package:basic_app/gradient_container.dart";

void main() {
  List<Color> colors = [];
  colors.add(const Color.fromARGB(255, 39, 120, 241));
  colors.add(const Color.fromARGB(255, 59, 167, 230));

  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: colors,
        ),
      ),
    ),
  );
}
