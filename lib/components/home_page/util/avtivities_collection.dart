// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gowork/components/home_page/setup/activities_setup.dart';

class Activities extends StatefulWidget {
  const Activities({super.key});

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ActivityLog(
              txt: 'Time Out',
              icon: Icons.timer_off,
            ),
            ActivityLog(
              txt: 'Time In',
              icon: Icons.timer,
            ),
            ActivityLog(
              txt: 'Request Approved',
              icon: Icons.mail,
            ),
            ActivityLog(
              txt: 'Time Out',
              icon: Icons.timer_off,
            ),
            ActivityLog(
              txt: 'Time In',
              icon: Icons.timer,
            ),
            ActivityLog(
              txt: 'Request Approved',
              icon: Icons.mail,
            ),
          ],
        ),
      ),
    );
  }
}
