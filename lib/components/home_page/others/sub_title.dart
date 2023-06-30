
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final subtitle;
  const SubTitle({
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: TextStyle(
        fontSize: 10,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w300
      ),
    );
  }
}
