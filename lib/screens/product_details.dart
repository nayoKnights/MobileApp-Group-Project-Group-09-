import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/add_item.dart';
import 'package:kcommerce/screens/onboard.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late PageController pageController;
  double currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.5,
        title: CommonText(
          text: 'Product Details',
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
        // margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              height: 150,
              width: size.width,
              color: blue1,
              child: Stack(children: [
                PageView(
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index.toDouble();
                    });
                  },
                  controller: pageController,
                  children: [
                    Center(
                        child: Image(
                      height: 150,
                      width: size.width / 2,
                      image: AssetImage(tcl),
                      fit: BoxFit.cover,
                    )),
                    Center(
                        child: Image(
                      height: 150,
                      width: size.width / 2,
                      image: AssetImage(tcl),
                      fit: BoxFit.cover,
                    )),
                    Center(
                        child: Image(
                      height: 150,
                      width: size.width / 2,
                      image: AssetImage(tcl),
                      fit: BoxFit.cover,
                    )),
                  ],
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: grey1,
                      )),
                )
              ]),
            ),
            DotsIndicator(
              onTap: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              dotsCount: 3,
              position: currentPage,
            ),
            spaceH,
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: 'TCL 40S6500 Smart Android TV - 40" Black',
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                  spaceH,
                  spaceH,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CommonText(
                        text: 'GHS 100',
                        fontWeight: bold,
                        fontSize: 16,
                      ),
                    ],
                  ),
                  spaceH,
                  CommonText(
                    text: 'Description',
                    textColor: black.withOpacity(0.5),
                    fontWeight: bold,
                  ),
                  spaceH,
                  spaceH,
                  CommonText(
                    text: dummyText2 + "\n" + dummyText2,
                    textColor: black,
                    fontWeight: semiBold,
                  ),
                  spaceH,
                  CommonText(
                    text: 'Specifications',
                    textColor: black.withOpacity(0.5),
                    fontWeight: bold,
                  ),
                  spaceH,
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Wrap(
                          children: [
                            CommonText(
                              text:
                                  "- Lorem ipsum dolor sit amet,qui minim labore adipisicing  minim sint cillum sint consectetur cupidatat",
                              textColor: black,
                              fontWeight: semiBold,
                            ),
                          ],
                        ),
                        spaceH,
                        spaceH,
                        Wrap(
                          children: [
                            CommonText(
                              text:
                                  "- Lorem ipsum dolor sit amet,qui minim labore adipisicing  minim sint cillum sint consectetur cupidatat",
                              textColor: black,
                              fontWeight: semiBold,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
      bottomSheet: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 70,
        child: Row(
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  navigatePush(destination: const ChatScreen(), context: context);
                },
                height: 50,
                elevation: 0,
                color: blue2.withOpacity(0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.message,
                      color: blue2,
                    ),
                    spaceW,
                    CommonText(
                      text: "MESSAGE",
                      textColor: blue2,
                    )
                  ],
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            spaceW,
            spaceW,
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                height: 50,
                elevation: 0,
                color: green2.withOpacity(0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.call,
                      color: green2,
                    ),
                    spaceW,
                    CommonText(
                      text: "CALL",
                      textColor: green2,
                    )
                  ],
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
