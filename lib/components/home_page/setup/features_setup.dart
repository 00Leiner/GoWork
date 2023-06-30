
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FeaturesButton extends StatelessWidget {
  final text;
  final icon;

  const FeaturesButton({
    super.key, required this.text, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Icon(icon),
          ),
        ),
            Text(text, style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),)
      ],
    );
  }
}