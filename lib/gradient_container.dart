import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/text_container.dart';
import 'package:first_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color, {super.key});

  List<Color> color;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: color,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(child: DiceRoller()));
  }
}
