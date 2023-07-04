// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TitleAndFilter extends StatelessWidget {
  const TitleAndFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Leave Request Info',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: Icon(
            Icons.filter_list,
            size: 20,
          ),
        )
      ],
    );
  }
}
