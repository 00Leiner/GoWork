// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gowork/cons/nav/routes.dart';

class AttendanceView extends StatelessWidget {
  const AttendanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                homeScreen,
                (route) => false,
              );
            },
            icon: Icon(Icons.arrow_back)),
        title: Text('My Attendance'),
      ),
      body: Container(),
    );
  }
}
