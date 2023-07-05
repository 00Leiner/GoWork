// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AllInOutSetup extends StatelessWidget {
  const AllInOutSetup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('All',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )),
              Text('In',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )),
              Text('Out',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 2,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  height: 2,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  height: 2,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
