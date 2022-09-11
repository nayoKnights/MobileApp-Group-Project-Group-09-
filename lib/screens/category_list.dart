import 'package:flutter/material.dart';
import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/add_item.dart';
import 'package:kcommerce/screens/onboard.dart';
import 'package:kcommerce/screens/product_details.dart';

class CategoryList extends StatefulWidget {
  final String category;
  CategoryList({Key? key, required this.category}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        centerTitle: true,
        title: CommonText(
          text: widget.category,
          fontWeight: bold,
          fontSize: 18,
        ),
        bottom: PreferredSize(
          child: SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 60,
                  width: size.width - 20,
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
                        width: size.width - 60,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'What are you looking for?',
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          preferredSize: const Size.fromHeight(90),
        ),
        elevation: 0.0,
      ),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                  navigatePush(
                      destination: const ProductDetails(), context: context);
                },
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
                                image: AssetImage(tcl), fit: BoxFit.cover)),
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
                                    Expanded(
                                        child: Padding(
                                      padding: EdgeInsets.only(left: 4),
                                      child: CommonText(
                                        text:
                                            'TCL 40S6500 Smart Android TV - 40" Black',
                                        fontSize: 12,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )),
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
                                      text: 'Greater Accra',
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
                                      text: 'GHS 2000',
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
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        onPressed: () {},
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
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        color: blue1,
                                        onPressed: () {
                                          navigatePush(
                                              destination: const ChatScreen(),
                                              context: context);
                                        },
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
              )
            ],
          )),
    );
  }
}
