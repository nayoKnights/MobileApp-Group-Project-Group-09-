import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/signup.dart';

import 'login.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blue1,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 0),
        child: Stack(
          children: [
            SizedBox(
                height: size.height,
                width: size.width,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  children: [
                    SizedBox(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: size.height * (1 / 3),
                          margin: const EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage(onBoardOneImage))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: size.height * (1 / 3),
                              left: 20,
                              right: 20),
                          child: CommonText(
                            text:
                                'Welcome to InStore',
                            fontWeight: normal,
                          ),
                        )
                      ],
                    )),
                    SizedBox(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: size.height * (1 / 3),
                          margin: const EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage(onBoardOneImage))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: size.height * (1 / 3),
                              left: 20,
                              right: 20),
                          child: CommonText(
                            text:
                                'Buying and selling made easy',
                            fontWeight: normal,
                          ),
                        )
                      ],
                    )),
                    SizedBox(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: size.height * (1 / 3),
                          margin: const EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage(onBoardOneImage))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: size.height * (1 / 3),
                              left: 20,
                              right: 20),
                          child: CommonText(
                            text:
                                'Create account or sign in to get started',
                            fontWeight: normal,
                          ),
                        )
                      ],
                    )),
                    SizedBox(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: size.height * (1 / 3),
                          margin: const EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage(onBoardOneImage))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: size.height * (1 / 3),
                              left: 20,
                              right: 20),
                          child: CommonText(
                            text:
                                'Buying and selling has never been made this easy.',
                            fontWeight: normal,
                          ),
                        )
                      ],
                    )),
                  ],
                )),
            Positioned( 
              bottom: 20,
              left: 10,
              child: currentPage == 3
                  ? CommonButton(
                      width: size.width - 20,
                      borderColor: blue2,
                      borderRadius: 10,
                      onPressed: () {
                        showBottomSheet(size);
                      },
                      label: 'GET STARTED',
                    )
                  : const SizedBox(),
            ),
            Positioned(
              left: size.width / 2 - 40,
              bottom: 100,
              child: DotsIndicator(
                position: currentPage.toDouble(),
                dotsCount: 4,
                decorator: DotsDecorator(activeColor: blue2, color: blue3),
              ),
            )
          ],
        ),
      ),
    );
  }

  showBottomSheet(Size size) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        context: context,
        builder: (context) => Container(
            height: size.height * (1 / 3) + 20,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                    text: 'Lorem ipsum dolor sit amet',
                    fontWeight: bold,
                    fontSize: 14),
                const SizedBox(
                  height: 10,
                ),
                CommonText(
                    text: 'Lorem ipsum dolor sit amet'
                        'consectetur adipiscing elit. Egestas'
                        ' quam mauris dui vitae tempus adipiscing.'
                        ' Tellus ut viverra volutpat'
                        ' vitae morbi lectus. ',
                    fontWeight: normal,
                    fontSize: 14),
                const SizedBox(
                  height: 20,
                ),
                CommonButton(
                  width: size.width - 20,
                  label: 'LOGIN',
                  onPressed: () {
                    navigatePushReplace(destination: Login(), context: context);
                  },
                  textColor: blue2,
                  buttonColor: white,
                  borderRadius: 5,
                  borderColor: blue2,
                ),
                const SizedBox(
                  height: 20,
                ),
                CommonButton(
                  width: size.width - 20,
                  label: 'SIGN UP',
                  onPressed: () {
                    navigatePushReplace(
                        destination: SignUp(), context: context);
                  },
                  textColor: white,
                  buttonColor: blue2,
                  borderRadius: 5,
                  borderColor: blue2,
                )
              ],
            ),
            decoration: const BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)))));
  }
}

class CommonText extends StatelessWidget {
  const CommonText(
      {Key? key,
      required this.text,
      this.fontSize,
      this.fontWeight, this.overflow,
      this.textColor})
      : super(key: key);

  final String text;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          overflow: overflow,
          fontSize: fontSize ?? 14,
          fontWeight: fontWeight ?? FontWeight.normal,
          color: textColor ?? Colors.black),
    );
  }
}

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
    required this.width,
    this.borderColor,
    this.height,
    this.buttonColor,
    required this.label,
    this.textColor, this.elevation,
    required this.onPressed,
    this.borderRadius,
    this.fontSize,
  }) : super(key: key);

  final String label;
  final Color? textColor;
  final Color? buttonColor;
  final Color? borderColor;
  final double? height;
  final double? fontSize;
  final double? elevation;
  final double? borderRadius;
  final double width;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: height ?? 50,
      disabledColor: buttonColor,
      minWidth: width,elevation: elevation,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor ?? blue1, width: 1.5),
          borderRadius: BorderRadius.circular(borderRadius ?? 10)),
      color: buttonColor ?? blue2,
      child: Text(
        label,
        style: TextStyle(
            color: textColor ?? Colors.white, fontSize: fontSize ?? 18),
      ),
    );
  }
}
