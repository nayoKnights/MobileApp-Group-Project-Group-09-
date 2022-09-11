import 'package:flutter/material.dart';
import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/category_list.dart';
import 'package:kcommerce/screens/onboard.dart';

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        centerTitle: true,
        title: CommonText(
          text: 'Categories',
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          navigatePush(
                              destination:
                                  CategoryList(category: 'Electronics'),
                              context: context);
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 10),
                          height: 60,
                          child: Row(children: [
                            Image(image: AssetImage(tv1)),
                            spaceW,
                            CommonText(
                              text: 'Electronics',
                              fontSize: 16,
                              fontWeight: bold,
                            )
                          ]),
                          decoration: BoxDecoration(
                              color: blue1,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    spaceW,
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                           navigatePush(
                              destination:
                                  CategoryList(category: 'Furniture'),
                              context: context);
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 10),
                          height: 60,
                          child: Row(children: [
                            Image(image: AssetImage(sofa)),
                            spaceW,
                            CommonText(
                              text: 'Furniture',
                              fontSize: 16,
                              fontWeight: bold,
                            )
                          ]),
                          decoration: BoxDecoration(
                              color: blue1,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                  ],
                ),
                spaceH,
                spaceH,
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                           navigatePush(
                              destination:
                                  CategoryList(category: 'Groceries'),
                              context: context);
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 10),
                          height: 60,
                          child: Row(children: [
                            Image(image: AssetImage(groceries)),
                            spaceW,
                            CommonText(
                              text: 'Groceries',
                              fontSize: 16,
                              fontWeight: bold,
                            )
                          ]),
                          decoration: BoxDecoration(
                              color: blue1,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    spaceW,
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                           navigatePush(
                              destination:
                                  CategoryList(category: 'Make Up'),
                              context: context);
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 10),
                          height: 60,
                          child: Row(children: [
                            Image(image: AssetImage(makeupTools)),
                            spaceW,
                            CommonText(
                              text: 'Make Up',
                              fontSize: 16,
                              fontWeight: bold,
                            )
                          ]),
                          decoration: BoxDecoration(
                              color: blue1,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                  ],
                ),
                spaceH,
                spaceH,
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                           navigatePush(
                              destination:
                                  CategoryList(category: 'Fitness'),
                              context: context);
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 10),
                          height: 60,
                          child: Row(children: [
                            Image(image: AssetImage(groceries)),
                            spaceW,
                            CommonText(
                              text: 'Fitness',
                              fontSize: 16,
                              fontWeight: bold,
                            )
                          ]),
                          decoration: BoxDecoration(
                              color: blue1,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    spaceW,
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                           navigatePush(
                              destination:
                                  CategoryList(category: 'Fashion'),
                              context: context);
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 10),
                          height: 60,
                          child: Row(children: [
                            Image(image: AssetImage(makeupTools)),
                            spaceW,
                            CommonText(
                              text: 'Fashion',
                              fontSize: 16,
                              fontWeight: bold,
                            )
                          ]),
                          decoration: BoxDecoration(
                              color: blue1,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
