import 'package:flutter/material.dart';
import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/onboard.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: blue2,
              ))
        ],
        elevation: 0.5,
        title: CommonText(
          text: 'Hanniel',
          fontSize: 20,
          fontWeight: semiBold,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CommonText(
              text: 'Note',
              fontWeight: bold,
            ),
            spaceH,
            CommonText(
              text:
                  'Do not pay any money to until you verify product. Meet with seller at public place for safety',
              fontWeight: normal,
            ),
            spaceH,
            spaceH,
            ChatCardWithAttach(
              time: 'Today 12:00 pm',
              productImg: tcl,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              productName: 'TCL 40S6500 Smart Android TV - 40" Black',
              productPrice: 2000,
              size: size,
            ),
            spaceH,
            spaceH,
            ChatCard(
                backColor: blue2,
                frontColor: blue2,
                sent: false,
                size: size,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                text: 'Can we meet',
                time: 'Today 12:00 pm'),
            ChatCard(
                sent: false,
                backColor: blue1,
                frontColor: black,
                size: size,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                text: 'Yes, we can meet up.',
                time: 'Today 12:00 pm')
          ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SuggestChatCard(
                text: 'I want to buy ',
                backColor: green2,
                frontColor: green2,
                onPressed: () {},
              ),
              spaceW,
              SuggestChatCard(
                text: 'How much?',
                backColor: orange,
                frontColor: orange,
                onPressed: () {},
              ),
              spaceW,
              SuggestChatCard(
                text: 'Can we meet? ',
                backColor: blue2,
                frontColor: blue2,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 100,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: size.width - 30,
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "Start Conversation",
                          border: InputBorder.none),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mic,
                      color: black,
                    ))
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.photo,
                      color: orange,
                    )),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send_rounded,
                      color: orange,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SuggestChatCard extends StatelessWidget {
  const SuggestChatCard(
      {Key? key,
      required this.backColor,
      required this.frontColor,
      required this.onPressed,
      required this.text})
      : super(key: key);

  final String text;
  final Color backColor;
  final Color frontColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: backColor.withOpacity(0.2),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      onPressed: onPressed,
      child: CommonText(
        text: text,
        textColor: frontColor.withOpacity(0.9),
      ),
    );
  }
}

class LabelValue extends StatelessWidget {
  const LabelValue(
      {Key? key, required this.label, required this.value, this.labelColor})
      : super(key: key);

  final String label;
  final String value;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CommonText(
          text: value,
          fontWeight: bold,
          textColor: black,
        ),
        spaceH,
        CommonText(
          text: label,
          fontWeight: semiBold,
          textColor: labelColor ?? black,
        )
      ],
    );
  }
}

class ChatCardWithAttach extends StatelessWidget {
  const ChatCardWithAttach({
    Key? key,
    required this.size,
    this.onTap,
    required this.productImg,
    required this.productName,
    required this.time,
    required this.crossAxisAlignment,
    required this.mainAxisAlignment,
    required this.productPrice,
  }) : super(key: key);

  final Size size;
  final String productName;
  final String productImg;
  final String time;
  final double productPrice;
  final Function()? onTap;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Container(
          height: 120,
          decoration: BoxDecoration(
            border: Border.all(color: grey1, width: 1.2),
            borderRadius: BorderRadius.circular(5),
          ),
          width: size.width - 50,
          child: Row(
            children: [
              SizedBox(
                width: size.width * (1 / 2) - 70,
                height: 150,
                child: Image(
                    height: 150,
                    image: AssetImage(productImg),
                    fit: BoxFit.cover),
              ),
              SizedBox(
                width: size.width * (1 / 2) - 10,
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        // color: Colors.red,
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4, top: 5),
                          child: CommonText(
                            text: productName,
                            fontSize: 12,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: CommonButton(
                          width: 65,
                          label: 'Brand New',
                          fontSize: 10,
                          elevation: 0,
                          onPressed: null,
                          textColor: black,
                          buttonColor: grey1,
                          height: 35,
                          borderRadius: 5,
                          borderColor: grey1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Row(
                          children: [
                            CommonText(
                              text: 'GHS $productPrice',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: bold,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        spaceH,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.done,
              color: red,
              size: 18,
            ),
            spaceW,
            CommonText(
              text: time,
              fontSize: 14,
            )
          ],
        )
      ],
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.backColor,
    required this.frontColor,
    required this.size,
    required this.crossAxisAlignment,
    required this.mainAxisAlignment,
    required this.text,
    required this.sent,
    required this.time,
  }) : super(key: key);

  final Size size;
  final String text;
  final String time;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final Color backColor;
  final Color frontColor;
  final bool sent;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Container(
          // height: 120,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: backColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(5),
          ),
          // width: size.width / 2 + 10,
          child: CommonText(
            text: text,
            textColor: frontColor.withOpacity(0.9),
          ),
        ),
        spaceH,
        Row(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: [
            sent
                ? Icon(
                    Icons.done,
                    color: red,
                    size: 18,
                  )
                : const SizedBox(),
            spaceW,
            CommonText(
              text: time,
              fontSize: 14,
            )
          ],
        )
      ],
    );
  }
}
