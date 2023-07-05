// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodayScheduleSetup extends StatefulWidget {
  const TodayScheduleSetup({
    super.key,
    required this.event,
    required this.timeofevent,
  });

  final String event;
  final String timeofevent;

  @override
  State<TodayScheduleSetup> createState() => _TodayScheduleSetupState();
}

class _TodayScheduleSetupState extends State<TodayScheduleSetup> {
  DateTime currentDate = DateTime.now();
  late int day;

  @override
  void initState() {
    super.initState();
    currentDate;
    day = currentDate.day;
  }

  @override
  Widget build(BuildContext context) {
    String dayTitle = DateFormat('E, MMM').format(currentDate);

    return GestureDetector(
      onTap: () => showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          height: 400,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        barrierColor: Colors.black87.withOpacity(0.3),
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    dayTitle.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '$day',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                width: 1,
                height: 80,
                color: Colors.grey[500],
                margin: const EdgeInsets.symmetric(horizontal: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.event,
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.timeofevent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
