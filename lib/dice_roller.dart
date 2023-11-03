import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 2;
  void rollDice() {
    setState(() {
      diceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$diceRoll.png',
            width: 200, height: 200),
        const SizedBox(height: 50),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle:
                    const TextStyle(fontSize: 28, fontStyle: FontStyle.italic)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
