
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TotalLeaveButtonSetup extends StatelessWidget {
  final int numOfLeaves;
  final int limitOfLeaves;
  final String title;
  const TotalLeaveButtonSetup({
    super.key,
    required this.limitOfLeaves,
    required this.numOfLeaves,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$numOfLeaves/$limitOfLeaves',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(title,
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w500)),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
