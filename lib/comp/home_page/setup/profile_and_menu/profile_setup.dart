// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfileSetup extends StatelessWidget {
  const ProfileSetup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
          ),
          SizedBox(height: 10,),
          Text('Leiner Sacdalan', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
          Text('leinersacdalan11@gmail.com', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(color: Colors.greenAccent, borderRadius: BorderRadius.circular(20),),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Edit Profile'),
            ),
          )
        ],
        
      ),
    );
  }
}