// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FeaturesButtonSetup extends StatelessWidget {
  final String text;
  final icon;
  final routeName;

  const FeaturesButtonSetup({
    super.key,
    required this.text,
    required this.icon,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(routeName, (route) => false),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Icon(icon),
            ),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
