// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gowork/comp/features/view/leave_request/setup/total_leave_button_setup.dart';

class TotalLeaveButtons extends StatelessWidget {
  const TotalLeaveButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TotalLeaveButtonSetup(
          numOfLeaves: 4,
          limitOfLeaves: 12,
          title: 'Annual leaves',
        ),
        TotalLeaveButtonSetup(
          numOfLeaves: 3,
          limitOfLeaves: 5,
          title: 'Medical leaves',
        ),
        TotalLeaveButtonSetup(
          numOfLeaves: 1,
          limitOfLeaves: 5,
          title: 'Casual leaves',
        ),
      ],
    );
  }
}
