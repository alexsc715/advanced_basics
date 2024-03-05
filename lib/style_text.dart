import "package:flutter/material.dart";

class StyledText extends StatelessWidget {
  final String text;

  const StyledText(this.text,
      {super.key}); //this.text define an argument and assign it at same time.

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
