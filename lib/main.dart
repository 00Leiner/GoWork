// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gowork/cons/nav/routes.dart';
import 'package:gowork/home_screen/home.dart';
import 'package:gowork/home_screen/features/btn/view/Attendance_view.dart';
import 'package:gowork/home_screen/features/btn/view/leave_request_view.dart';
import 'package:gowork/home_screen/features/btn/view/mail_view.dart';
import 'package:gowork/home_screen/features/btn/view/my_documents_view.dart';
import 'package:gowork/home_screen/features/btn/view/profile_menu_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, 
      title: 'Home Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
      routes: {
        menuProfile : (context) => ProfileMenuView(),
        mail : (context) => MailView(),
        myDocuments : (context) => MyDocsView(),
        leaveRequest : (context) => LeaveRequestView(),
        myAttendance : (context) => AttendanceView(),
        homeScreen : (context) => HomePage(),
      },
    ),);
}
