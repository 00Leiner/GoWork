// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gowork/components/home_page/setup/features_setup.dart';

class FeatureButtons extends StatelessWidget {
  const FeatureButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FeaturesButton(text: 'Notification', icon: Icons.notifications,),
        FeaturesButton(text: 'My Docs', icon: Icons.topic,),
        FeaturesButton(text: 'Leave Req.', icon: Icons.person_off,),
        FeaturesButton(text: 'Attendance', icon: Icons.list_alt,),
      ],
    );
  }
}