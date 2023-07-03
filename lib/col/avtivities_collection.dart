// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gowork/comp/home_page/setup/activities_setup.dart';

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
            ActivityLogSetup(
              txt: 'Time Out',
              icon: Icons.timer_off,
            ),
            ActivityLogSetup(
              txt: 'Time In',
              icon: Icons.timer,
            ),
            ActivityLogSetup(
              txt: 'Request Approved',
              icon: Icons.mail,
            ),
            ActivityLogSetup(
              txt: 'Time Out',
              icon: Icons.timer_off,
            ),
            ActivityLogSetup(
              txt: 'Time In',
              icon: Icons.timer,
            ),
            ActivityLogSetup(
              txt: 'Request Approved',
              icon: Icons.mail,
            ),
          ],
        ),
      ),
    );
  }
}
