import "package:advanced_basics/quiz.dart";
import "package:flutter/material.dart";

void main() {
  runApp(
    const Quiz(),
  );
}

/*class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
          ),
          const Text("Learn Flutter the fun way!"),
          ElevatedButton(onPressed: () {}, child: const Text("Start Quiz")),
        ],
      ),
    );
  }
}*/
