import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random(); //Create once first execution

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  //I'm passing this function as pointer to the named parameter onPressed
  void rollDice() {
    setState(() {
      currentDiceRoll =
          randomizer.nextInt(6) + 1; //Using the object create in memory
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceRoll.png",
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 20),
                backgroundColor: Colors.blue[700],
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                )),
            child: const Text("Rolar Dado"))
      ],
    );
  }
}
