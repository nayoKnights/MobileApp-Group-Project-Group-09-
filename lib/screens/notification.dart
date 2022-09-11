import 'package:flutter/material.dart';

import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/onboard.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: white,
        elevation: 0.5,
        title: CommonText(
          text: 'Notifications',
          fontSize: 20,
          fontWeight: bold,
        ),
        centerTitle: true,
        leading: const SizedBox(),
      ),
      body:  Center(child: CommonText(text: 'No notifications', fontSize: 20, fontWeight: bold,),),
    );
  }
}
