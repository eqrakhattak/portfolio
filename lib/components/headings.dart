import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class Heading extends StatelessWidget {

  final String lable;

  const Heading({super.key, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Text(
      lable,
      style: const TextStyle(
        fontFamily: 'Londrina Outline',
        fontSize: 45.0,
        color: charcoal,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
