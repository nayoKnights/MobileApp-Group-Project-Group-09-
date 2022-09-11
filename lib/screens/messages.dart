import 'package:flutter/material.dart';
import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/add_item.dart';
import 'package:kcommerce/screens/onboard.dart';

class Messages extends StatefulWidget {
  Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.5,
        title: CommonText(
          text: 'Messages',
          fontSize: 20,
          fontWeight: bold,
        ),
        centerTitle: true,
        leading: const SizedBox(),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
        
        children: [
          MessageCard(
              personImage: account,
              personMessage: "New Message",
              personName: 'Hanniel', 
              time: 'Today',
              onTap: () {
                navigatePush(destination: const ChatScreen(), context: context);
              },
            ),
             MessageCard(
              personImage: account,
              personMessage: "New Message",
              personName: 'Nathaniel ', 
              time: 'Today',
              onTap: () {
                navigatePush(destination: const ChatScreen(), context: context);
              },
            ),
            MessageCard(
              personImage: account,
              personMessage: "New Message",
              personName: 'Grace  ',  
              time: 'Today',
              onTap: () {
                navigatePush(destination: const ChatScreen(), context: context);
              },
            ),
        ],
        ),
      ),
    );
  }
}

class MessageCard extends StatelessWidget {
  const MessageCard({
    Key? key,
    this.onTap,
    required this.time,
    required this.personName,
    required this.personImage,
    required this.personMessage,
  }) : super(key: key);

  final String personName;
  final String time;
  final String personMessage;
  final String personImage;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: CommonText(text: personName),
      trailing: CommonText(text: time, fontSize: 10),
      leading: CircleAvatar(backgroundImage: AssetImage(account)),
      subtitle: CommonText(
        text: personMessage,
        textColor: blue2,
        fontSize: 14,
      ),
    );
  }
}
