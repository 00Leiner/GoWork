// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gowork/comp/home_page/btns/feature_buttons.dart';
import 'package:gowork/comp/home_page/setup/header_setup.dart';
import 'package:gowork/comp/home_page/others/sub_title.dart';
import 'package:gowork/comp/home_page/setup/today_schedule_setup.dart';
import 'package:gowork/col/collection_of_activities.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomePageHeaderSetup(),
              SizedBox(
                height: 10,
              ),
              Text(
                'Home',
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                height: 10,
              ),
              SubTitle(
                subtitle: 'Features: ',
              ),
              SizedBox(
                height: 15,
              ),
              FeatureButtons(),
              SizedBox(
                height: 25,
              ),
              SubTitle(
                subtitle: "Today's Schedule: ",
              ),
              SizedBox(
                height: 15,
              ),
              TodayScheduleSetup(
                event: 'Work: ',
                timeofevent: '10:00 am - 6:00 pm',
              ),
              SizedBox(
                height: 25,
              ),
              SubTitle(
                subtitle: 'Activities: ',
              ),
              SizedBox(
                height: 15,
              ),
              Activities(),
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.lightBlueAccent,
            shape: CircleBorder(),
            child: Icon(Icons.access_time, size: 40, color: Colors.grey[200],),
          ),
        ),
        floatingActionButtonLocation: CustomFloatingActionButtonLocation(),
      ),
    );
  }
}
class CustomFloatingActionButtonLocation extends FloatingActionButtonLocation {
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final double x = scaffoldGeometry.scaffoldSize.width - 100;
    final double y = scaffoldGeometry.scaffoldSize.height - 150;

    return Offset(x, y);
  }
}
