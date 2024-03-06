import 'package:basic_app/privacy_policy.dart';
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
            child: const Text("Rolar Dado")),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PrivacyPolicy(),
              ),
            );
          },
          child: Text(
            "Política de Privacidade",
            style: TextStyle(
                color: Colors.amber[50],
                fontSize: 18,
                letterSpacing: 2,
                decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
