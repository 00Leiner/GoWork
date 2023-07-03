// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MailSetup extends StatefulWidget {
  final String person;
  final String toOrFrom;
  final String content;
  final String time;
  const MailSetup({
    super.key,
    required this.person,
    required this.content,
    required this.time,
    required this.toOrFrom,
  });

  @override
  State<MailSetup> createState() => _MailSetupState();
}

class _MailSetupState extends State<MailSetup> {
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 65,
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
                        Icons.mail,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.toOrFrom} ${widget.person}',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Content: ${widget.content}',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    widget.time,
                    style: TextStyle(
                        fontSize: 8,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300),
                  ),
                  Icon(
                    Icons.star_outline,
                    size: 20,
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
