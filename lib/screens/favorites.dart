import 'package:flutter/material.dart';
import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/categories.dart';
import 'package:kcommerce/screens/onboard.dart';

class Favorites extends StatefulWidget {
  Favorites({Key? key}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.5,
        title: CommonText(
          text: 'Favorites',
          fontSize: 20,
          fontWeight: bold,
        ),
        centerTitle: true,
        leading: const SizedBox(),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
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
                    ),
                    spaceW,
                    Expanded(
                      child: MaterialButton(
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
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height - 270,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return FavoriteCard(
                        onCallPressed: () {},
                        productImg: tcl,
                        productLocation: 'Greater Accra',
                        productName: 'TCL 40S6500 Smart Android TV - 40" Black',
                        productPrice: 2000,
                        onMessagePressed: () {},
                        onTap: () {},
                        size: size);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
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
                        children: [
                          const Expanded(
                              flex: 3,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: CommonText(
                                  text:
                                      'TCL 40S6500 Smart Android TV - 40" Black',
                                  fontSize: 12,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )),
                          Expanded(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: blue2,
                                  )))
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
                          Spacer(),
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
