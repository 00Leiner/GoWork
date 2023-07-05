// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gowork/comp/features/view/attendance/all_in_out_setup.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            AllInOutSetup(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                height: 67,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[200],
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
                                Icons.timer,
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Check In',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '05 Jun 2023',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '02:53 pm',
                            style: TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'late 5mins',
                            style: TextStyle(
                                fontSize: 10,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
