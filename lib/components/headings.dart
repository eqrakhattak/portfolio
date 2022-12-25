import 'package:flutter/material.dart';

class Heading extends StatelessWidget {

  final String lable;

  const Heading({required this.lable});

  @override
  Widget build(BuildContext context) {
    return Text(
      lable,
      style: TextStyle(
        fontFamily: 'Londrina Outline',
        fontSize: 45.0,
        color: Colors.purple[800],
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
