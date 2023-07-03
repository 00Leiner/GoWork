// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ActivityLogSetup extends StatefulWidget {
  final String txt;
  final IconData icon;

  const ActivityLogSetup({
    Key? key,
    required this.txt,
    required this.icon,
  }) : super(key: key);

  @override
  State<ActivityLogSetup> createState() => _ActivityLogSetupState();
}

class _ActivityLogSetupState extends State<ActivityLogSetup> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // color: widget.color,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        widget.icon,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    widget.txt,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Text(
                    '2 min ago',
                    style: TextStyle(
                        fontSize: 8,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
