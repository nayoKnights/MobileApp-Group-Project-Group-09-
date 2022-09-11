import 'package:flutter/material.dart';

Color blue1 = const Color(0xffc3e7f8);
Color blue2 = const Color(0xff0d47a1);
Color blue3 = const Color(0xff99c1ff);
Color blue4 = const Color(0xfff1f8fc);

Color green1 = const Color(0xffceecbe);
Color green2 = const Color(0xff028402);

Color grey1 = const Color(0xffd9d9d9);
Color white = Colors.white;
Color black = Colors.black;
Color orange = Colors.orange;
Color red = Colors.red;

FontWeight bold = FontWeight.bold;
FontWeight semiBold = FontWeight.w500;
FontWeight normal = FontWeight.normal;

String onBoardOneImage = "assets/images/hand.png";
String account = "assets/images/account.png";
String onBoardTwoImage = "assets/images/hand.png";
String onBoardThreeImage = "assets/images/hand.png";
String onBoardFourImage = "assets/images/hand.png";

String tv1 = "assets/images/tv 1.png";
String makeupTools = "assets/images/makeup-tools.png";
String groceries = "assets/images/groceries.png";
String sofa = "assets/images/sofa.png";

String shaver = "assets/images/shaver.png";
String tcl = "assets/images/tcl.png";

String dummyText2 =
      "Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat"
      "Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat";


navigatePush({required Widget destination, required BuildContext context}) =>
    Navigator.push(context, MaterialPageRoute(builder: (_) => destination));

navigatePushReplace(
        {required Widget destination, required BuildContext context}) =>
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => destination));

const spaceH = SizedBox(
  height: 10,
);
const spaceW = SizedBox(
  width: 10,
);
