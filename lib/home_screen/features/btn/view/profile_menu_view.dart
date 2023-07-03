// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gowork/comp/home_page/setup/profile_and_menu/menu_setup.dart';
import 'package:gowork/comp/home_page/setup/profile_and_menu/profile_setup.dart';

class ProfileMenuView extends StatelessWidget {
  const ProfileMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0,),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileSetup(),
                  SizedBox(height: 20,),
                  MenuSetup(icon: Icons.security, txt: 'Security', actionicon: Icons.chevron_right,),
                  MenuSetup(icon: Icons.hide_source, txt: 'Registration Info', actionicon: Icons.remove_red_eye,),
                  MenuSetup(icon: Icons.account_box, txt: 'User & Account', actionicon: Icons.chevron_right,),
                  MenuSetup(icon: Icons.accessibility, txt: 'Display & Accessibility', actionicon: Icons.chevron_right,),
                  MenuSetup(icon: Icons.help_outline, txt: 'Help & Support', actionicon: Icons.chevron_right,),
                  MenuSetup(icon: Icons.menu_book, txt: 'Quick Guide', actionicon: Icons.chevron_right,),
                  MenuSetup(icon: Icons.info, txt: 'About', actionicon: Icons.chevron_right,),
                  MenuSetup(icon: Icons.settings, txt: 'Settings', actionicon: Icons.chevron_right,),
                ],
              ),
            ),
            Opacity(
              opacity: 0.2,
              child: Divider(color: Colors.black, thickness: 1, )),
            MenuSetup(icon: Icons.logout, txt: 'Log-out',),
          ],
        ),
      ),
    );
  }
}

