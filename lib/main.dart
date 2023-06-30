import 'package:flutter/material.dart';
import 'package:gowork/templates/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, 
      title: 'Home Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    ),);
}
