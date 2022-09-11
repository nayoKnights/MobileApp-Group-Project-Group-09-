import 'package:flutter/material.dart';
import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/categories.dart';
import 'package:kcommerce/screens/onboard.dart';
import 'package:kcommerce/screens/profile.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        bottom: PreferredSize(
          child: SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 60,
                  width: size.width - 90,
                  decoration: BoxDecoration(
                      border: Border.all(color: blue2, width: 0.8),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5, right: 5),
                        child: Icon(
                          Icons.search,
                          color: blue2,
                          size: 25,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 4),
                        height: 60,
                        width: size.width - 145,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'What are you looking for?',
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 60,
                  height: 60,
                  color: blue2,
                  onPressed: () {
                    navigatePush(destination: Categories(), context: context);
                  },
                  child: Icon(
                    Icons.tune,
                    color: white,
                  ),
                )
              ],
            ),
          ),
          preferredSize: const Size.fromHeight(90),
        ),
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            navigatePush(destination: const Profile(), context: context);
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(account),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          height: size.height - 100,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    text: 'Categories',
                    textColor: black,
                    fontWeight: bold,
                    fontSize: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: CommonText(
                        text: 'See All',
                        fontWeight: bold,
                        textColor: blue2,
                      ))
                ],
              ),
              spaceH,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CategoryCard(
                      label: 'Electronics',
                      icon: tv1,
                    ),
                    spaceW,
                    CategoryCard(
                      label: 'Furniture',
                      icon: sofa,
                    ),
                    spaceW,
                    CategoryCard(
                      label: 'Groceries',
                      icon: groceries,
                    ),
                    spaceW,
                    CategoryCard(
                      label: 'Make Up',
                      icon: makeupTools,
                    ),
                    spaceW,
                    CategoryCard(
                      label: 'Sports',
                      icon: makeupTools,
                    ),
                  ],
                ),
              ),
              spaceH,
              spaceH,
              CommonText(
                text: 'Trending',
                fontWeight: bold,
                fontSize: 18,
              ),
              spaceH,
              spaceH,
              FavoriteCard(
                  onCallPressed: () {},
                  productImg: tcl,
                  productLocation: 'Greater Accra',
                  productName: 'TCL 40S6500 Smart Android TV - 40" Black',
                  productPrice: 2000,
                  onMessagePressed: () {},
                  onTap: () {},
                  size: size),
                  spaceH,
              FavoriteCard(
                  onCallPressed: () {}, 
                  productImg: tcl,
                  productLocation: 'Greater Accra',
                  productName: 'TCL 40S6500 Smart Android TV - 40" Black',
                  productPrice: 2000,
                  onMessagePressed: () {},
                  onTap: () {},
                  size: size),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: blue1,
              image: DecorationImage(image: AssetImage(icon)),
              borderRadius: BorderRadius.circular(5)),
        ),
        spaceH,
        CommonText(
          text: label,
          fontWeight: bold,
        )
      ],
    );
  }
}

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    Key? key,
    required this.size,
    required this.onCallPressed,
    this.onMessagePressed,
    this.onTap,
    required this.productImg,
    required this.productLocation,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);

  final Size size;
  final String productName;
  final String productImg;
  final String productLocation;
  final double productPrice;
  final Function()? onTap;
  final Function()? onCallPressed;
  final Function()? onMessagePressed;

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
              width: size.width * (1 / 3) - 10,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(productImg), fit: BoxFit.cover)),
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
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 4),
                            child: CommonText(
                              text: 'TCL 40S6500 Smart Android TV - 40" Black',
                              fontSize: 12,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.green,
                      height: 12,
                      padding: const EdgeInsets.only(left: 4),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: grey1,
                            size: 14,
                          ),
                          CommonText(
                            text: productLocation,
                            textColor: grey1,
                            fontSize: 12,
                          ),
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
                          const Spacer(),
                          Flexible(
                            child: MaterialButton(
                              minWidth: 25,
                              height: 25,
                              color: green1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: onCallPressed,
                              child: Icon(
                                Icons.call,
                                size: 14,
                                color: green2,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: MaterialButton(
                              minWidth: 25,
                              height: 25,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: blue1,
                              onPressed: onMessagePressed,
                              child: Icon(
                                Icons.message,
                                color: blue2,
                                size: 14,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
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
