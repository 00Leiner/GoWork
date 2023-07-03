// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gowork/comp/home_page/setup/features_button_setup.dart';
import 'package:gowork/cons/nav/routes.dart';

class FeatureButtons extends StatelessWidget {
  const FeatureButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FeaturesButtonSetup(text: 'Mail', icon: Icons.email, routeName: mail),
        FeaturesButtonSetup(text: 'My Docs', icon: Icons.topic,routeName: myDocuments),
        FeaturesButtonSetup(text: 'Leave Req.', icon: Icons.person_off,routeName: leaveRequest),
        FeaturesButtonSetup(text: 'Attendance', icon: Icons.list_alt,routeName: myAttendance),
      ],
    );
  }
}