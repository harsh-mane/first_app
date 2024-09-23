import 'package:flutter/material.dart';
import 'dart:math';

class GradientLayout extends StatelessWidget {
  //const GradientLayout({key1}):super(key: key1);

  const GradientLayout({super.key});

  //
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient:
            LinearGradient(colors: [Colors.amberAccent, Colors.greenAccent]),
      ),
      child: Center(child: Diceroller()),
    );
  }
}

class Diceroller extends StatefulWidget {
  const Diceroller({super.key});

  @override
  State<Diceroller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<Diceroller> {
  String? imageAsset;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imageAsset ?? 'assets/dice-six-faces-2.png',
          width: 180,
        ),
        TextButton(
            onPressed: () {
              setState(() {
                var randomNumber = Random().nextInt(6) + 1;
                imageAsset = 'assets/dice-six-faces-$randomNumber.png';
              });
            },
            style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(31, 7, 7, 7),
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll a Dice"))
      ],
    );
  }
}
