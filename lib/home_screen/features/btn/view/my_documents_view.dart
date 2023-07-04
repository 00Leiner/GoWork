// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gowork/comp/features/view/my_documents/folder/folder.dart';
import 'package:gowork/cons/nav/routes.dart';

class MyDocsView extends StatelessWidget {
  const MyDocsView({super.key});

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
        title: Text('My Documents'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Folders(),
      ),
    );
  }
}
