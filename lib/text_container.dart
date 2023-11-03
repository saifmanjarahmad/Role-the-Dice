import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  TextContainer(this.text, {super.key});

  String text;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
