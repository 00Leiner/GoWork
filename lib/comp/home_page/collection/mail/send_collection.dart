// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gowork/comp/home_page/setup/features/view/mail/mail_setup.dart';

class SendCollection extends StatelessWidget {
  const SendCollection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            MailSetup(
              person: 'Supervisor',
              content: 'mail content here.....',
              time: '2 mins ago',
              toOrFrom: 'To:',
            ),
            MailSetup(
              person: 'Supervisor',
              content: 'mail content here.....',
              time: '2 mins ago',
              toOrFrom: 'To:',
            ),
            MailSetup(
              person: 'Supervisor',
              content: 'mail content here.....',
              time: '2 mins ago',
              toOrFrom: 'To:',
            ),
            MailSetup(
              person: 'Supervisor',
              content: 'mail content here.....',
              time: '2 mins ago',
              toOrFrom: 'To:',
            ),
            MailSetup(
              person: 'Supervisor',
              content: 'mail content here.....',
              time: '2 mins ago',
              toOrFrom: 'To:',
            ),
            MailSetup(
              person: 'Supervisor',
              content: 'mail content here.....',
              time: '2 mins ago',
              toOrFrom: 'To:',
            ),
            MailSetup(
              person: 'Supervisor',
              content: 'mail content here.....',
              time: '2 mins ago',
              toOrFrom: 'To:',
            ),
          ],
        ),
      ),
    );
  }
}
