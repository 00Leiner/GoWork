// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MenuSetup extends StatelessWidget {
  final icon;
  final String txt;
final actionicon;
  const MenuSetup({
    required this.icon, required this.txt, this.actionicon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(icon),
                  )),
              SizedBox(
                width: 10,
              ),
              Text(
                txt,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Opacity(
            opacity: 0.3,
            child: Icon(actionicon)),
        ],
      ),
    );
  }
}
