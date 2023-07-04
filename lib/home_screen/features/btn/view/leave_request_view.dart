// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gowork/col/leave_request_collection.dart';
import 'package:gowork/comp/features/view/leave_request/btn/total_leave_buttons.dart';
import 'package:gowork/comp/features/view/leave_request/others/title_and_filter.dart';
import 'package:gowork/cons/nav/routes.dart';

class LeaveRequestView extends StatelessWidget {
  const LeaveRequestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Request'),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                homeScreen,
                (route) => false,
              );
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            TotalLeaveButtons(),
            SizedBox(
              height: 25,
            ),
            TitleAndFilter(),
            SizedBox(
              height: 20,
            ),
            LeaveRequestCollection(),
          ],
        ),
      ),
    );
  }
}
