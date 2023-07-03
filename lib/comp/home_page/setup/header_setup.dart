// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gowork/cons/nav/routes.dart';

class HomePageHeaderSetup extends StatefulWidget {
  const HomePageHeaderSetup({super.key});

  @override
  State<HomePageHeaderSetup> createState() => _HomePageHeaderSetupState();
}

class _HomePageHeaderSetupState extends State<HomePageHeaderSetup> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'Hi! ',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Leiner',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              menuProfile,
            );
          },
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
          ),
        ),
      ],
    );
  }
}
