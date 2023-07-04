// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gowork/col/mail/received_collection.dart';
import 'package:gowork/col/mail/send_collection.dart';
import 'package:gowork/comp/features/view/mail/setup/search_field_setup.dart';
import 'package:gowork/comp/features/view/mail/setup/send_and_received_buttons_setup.dart';
import 'package:gowork/comp/features/view/mail/others/item_and_filter.dart';
import 'package:gowork/cons/nav/routes.dart';

class MailView extends StatefulWidget {
  const MailView({super.key});

  @override
  State<MailView> createState() => _MailViewState();
}

class _MailViewState extends State<MailView> {
  bool changeScreen = true;
  
  void handleToFChanged(bool toF) {
    setState(() {
       changeScreen = toF;
    });
  }

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
        title: Text('Mails'),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Text('Marked as read'),
              ),
              const PopupMenuItem(
                child: Text('Starred'),
              ),
              const PopupMenuItem(
                child: Text('Edit'),
              ),
              const PopupMenuItem(
                child: Text('Delete all'),
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: [
          SendReceiveButtonSetup(onToFChanged: handleToFChanged,),
          SizedBox(height: 15,),
          SearchFieldSetup(),
          SizedBox(height: 10,),
          ItemFilter(),
          SizedBox(height: 8,),
          changeScreen ? SendCollection() :  ReceivedCollection()
        ]),
      ),
    );
  }
}
