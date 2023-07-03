// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

typedef OnToFChanged = void Function(bool toF);

class SendReceiveButtonSetup extends StatefulWidget {
  final OnToFChanged onToFChanged;

  const SendReceiveButtonSetup({
    Key? key,
    required this.onToFChanged,
  }) : super(key: key);

  @override
  State<SendReceiveButtonSetup> createState() => _SendReceiveButtonSetupState();
}

class _SendReceiveButtonSetupState extends State<SendReceiveButtonSetup> {
  bool isSendColorChanged = true;
  bool isReceivedColorChanged = false;
  late bool toF;

  void changeToSend() {
    setState(() {
      toF = true; // Update the value of toF before calling the callback function
      isSendColorChanged = !isSendColorChanged;
      isReceivedColorChanged = false;
      widget.onToFChanged(toF);
    });
  }

  void changeToReceived() {
    setState(() {
      toF = false; // Update the value of toF before calling the callback function
      isReceivedColorChanged = !isReceivedColorChanged;
      isSendColorChanged = false;
      widget.onToFChanged(toF);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: changeToSend,
              child: Text(
                'Send',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            GestureDetector(
              onTap: changeToReceived,
              child: Text(
                'Received',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 2,
                decoration: BoxDecoration(
                  color: isSendColorChanged ? Colors.blue : Colors.grey[200],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 2,
                decoration: BoxDecoration(
                  color:
                      isReceivedColorChanged ? Colors.blue : Colors.grey[200],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
