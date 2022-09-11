import 'package:flutter/material.dart';
import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/add_item.dart';
import 'package:kcommerce/screens/edit_info.dart';
import 'package:kcommerce/screens/notification.dart';
import 'package:kcommerce/screens/onboard.dart';
import 'package:kcommerce/screens/product_details.dart';
import 'package:kcommerce/screens/post_new_item.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        actions: [
          IconButton(
              onPressed: () {
                navigatePush(
                    destination: const NotificationScreen(), context: context);
              },
              icon: Icon(
                Icons.notifications,
                color: blue2,
              ))
        ],
        elevation: 0.5,
        title: CommonText(
          text: 'Profile',
          fontSize: 20,
          fontWeight: bold,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    text: 'Hanniel Naa Ameley Tagoe',
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                  TextButton(
                      onPressed: () {
                        navigatePush(
                            destination: EditProfile(), context: context);
                      },
                      child: CommonText(
                        text: 'Edit Info',
                        textColor: red,
                        fontSize: 16,
                        fontWeight: bold,
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    color: grey1,
                  ),
                  spaceW,
                  CommonText(
                    text: 'Greater Accra',
                    fontSize: 14,
                    textColor: grey1,
                  ),
                ],
              ),
              spaceH,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      MaterialButton(
                        height: 50,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        minWidth: 50,
                        color: blue2,
                        onPressed: () {
                          navigatePush(
                              destination: const PostNewItem(),
                              context: context);
                        },
                        child: Icon(
                          Icons.add,
                          color: white,
                        ),
                      ),
                      spaceH,
                      CommonText(
                        text: 'New Post',
                        textColor: black,
                        fontSize: 12,
                      )
                    ],
                  ),
                  LabelValue(
                    label: 'Messages',
                    value: '100',
                    labelColor: red,
                  ),
                  const LabelValue(
                    label: 'Post',
                    value: '50',
                  ),
                  const LabelValue(
                    label: 'Sold',
                    value: '25',
                  )
                ],
              ),
              spaceH,
              spaceH,
              CommonText(
                text: 'My Posts',
                fontSize: 20,
                fontWeight: semiBold,
              ),
              spaceH,
              spaceH,
              PostCard(
                size: size,
                productImg: tcl,
                productName: 'TCL 40S6500 Smart Android TV - 40" Black',
                productPrice: 2000,
                onSharePressed: () {},
                productViews: 100,
                onMorePressed: () {},
                onTap: () {
                  navigatePush(
                      destination: const ProductDetails(), context: context);
                },
              ),
              spaceH,
              spaceH,
              PostCard(
                size: size,
                productImg: shaver,
                productName: 'TCL 40S6500 Smart Android TV - 40" Black',
                productPrice: 414.70,
                onSharePressed: () {},
                productViews: 100,
                onMorePressed: () {},
                onTap: () {
                  navigatePush(
                      destination: const ProductDetails(), context: context);
                },
              )
            ],
          ),
        ),
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

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.size,
    required this.onSharePressed,
    this.onMorePressed,
    this.onTap,
    required this.productImg,
    required this.productViews,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);

  final Size size;
  final String productName;
  final String productImg;
  final int productViews;
  final double productPrice;
  final Function()? onTap;
  final Function()? onSharePressed;
  final Function()? onMorePressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          border: Border.all(color: grey1, width: 1.2),
          borderRadius: BorderRadius.circular(5),
        ),
        width: size.width - 20,
        child: Row(
          children: [
            Container(
              color: red,
              width: size.width * (1 / 3) - 10,
              height: 150,
              child: Stack(children: [
                Image(
                    height: 150,
                    image: AssetImage(productImg),
                    fit: BoxFit.cover),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    height: 20,
                    alignment: Alignment.center,
                    width: size.width * (1 / 3) - 20,
                    child: CommonText(
                      text: 'Electronics',
                      textColor: white,
                      fontSize: 12,
                    ),
                    decoration: BoxDecoration(
                        color: blue2,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                  ),
                )
              ]),
            ),
            SizedBox(
              width: size.width * (2 / 3) - 15,
              child: SizedBox(
                width: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      // color: Colors.red,
                      height: 35,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: CommonText(
                                  text: productName,
                                  fontSize: 12,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )),
                          Expanded(
                              child: Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: CircleAvatar(
                              backgroundColor: blue2,
                              child: Align(
                                alignment: Alignment.center,
                                child: IconButton(
                                    onPressed: onSharePressed,
                                    icon: Icon(
                                      Icons.share,
                                      size: 16,
                                      color: white,
                                    )),
                              ),
                            ),
                          ))
                        ],
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // color: Colors.green,
                          height: 12,
                          padding: const EdgeInsets.only(left: 4),
                          child: Row(
                            children: [
                              Icon(
                                Icons.visibility,
                                color: black.withOpacity(0.5),
                                size: 14,
                              ),
                              CommonText(
                                text: "$productViews views",
                                textColor: black.withOpacity(0.5),
                                fontSize: 12,
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: onMorePressed,
                            icon: Icon(
                              Icons.more_horiz,
                              color: black.withOpacity(0.8),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
