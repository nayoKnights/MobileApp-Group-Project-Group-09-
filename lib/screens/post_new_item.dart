import 'package:flutter/material.dart';
import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/onboard.dart';

class PostNewItem extends StatefulWidget {
  const PostNewItem({Key? key}) : super(key: key);

  @override
  State<PostNewItem> createState() => _PostNewItemState();
}

class _PostNewItemState extends State<PostNewItem> {
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  String category = 'Select Category';
  String condition = 'Select Condition';
  List<String> categories = ["Select Category"];
  List<String> conditions = ["Select Condition"];
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.5,
        title: CommonText(
          text: 'Post New Item',
          fontSize: 20,
          fontWeight: bold,
        ),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LinearProgressIndicator(
                backgroundColor: blue1,
                minHeight: 10,
                value: 0.5,
                color: blue2,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    spaceH,
                    spaceH,
                    CommonText(
                      text: 'Item Details',
                      textColor: Colors.blue.shade700,
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                    spaceH,
                    spaceH,
                    Row(
                      children: [
                        MaterialButton(
                          height: 50,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          minWidth: 50,
                          color: blue2,
                          onPressed: () {},
                          child: Icon(
                            Icons.add,
                            color: white,
                          ),
                        ),
                        spaceW,
                        CommonText(
                            text: 'Add 3 product images',
                            textColor: Colors.blue.shade700),
                      ],
                    ),
                    spaceH,
                    spaceH,
                    CommonText(
                      text: 'Category',
                      fontWeight: bold,
                    ),
                    spaceH,
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButton<String>(
                          underline: const SizedBox(),
                          items: categories.map((String value) {
                            return DropdownMenuItem<String>(
                                child: CommonText(
                              text: value,
                            ));
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              category = value!;
                            });
                          }),
                    ),
                    spaceH,
                    spaceH,
                    CommonText(
                      text: 'Description',
                      fontWeight: bold,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: black.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(5)),
                      height: 100,
                      child: TextFormField(
                        controller: priceController,
                        validator: (value) {
                          return null;
                        },
                        minLines: 3,
                        maxLines: 5,
                        decoration: const InputDecoration(
                            hintText: 'Type in description...',
                            border: InputBorder.none),
                      ),
                    ),
                    spaceH,
                    spaceH,
                    CommonText(
                      text: 'Condition',
                      fontWeight: bold,
                    ),
                    spaceH,
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButton<String>(
                          underline: const SizedBox(),
                          items: conditions.map((String value) {
                            return DropdownMenuItem<String>(
                                child: CommonText(
                              text: value,
                            ));
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              category = value!;
                            });
                          }),
                    ),
                    spaceH,
                    spaceH,
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: black.withOpacity(0.5))),
                      child: Row(
                        children: [
                          MaterialButton(
                            height: 50,
                            minWidth: 50,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    topLeft: Radius.circular(5))),
                            onPressed: null,
                            color: black.withOpacity(0.5),
                            disabledColor: black.withOpacity(0.5),
                            child: CommonText(
                              text: 'GHS',
                              textColor: white,
                            ),
                          ),
                          spaceW,
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: TextFormField(
                                controller: descriptionController,
                                validator: (value) {
                                  return null;
                                },
                                decoration: const InputDecoration(
                                    hintText: '0.0', border: InputBorder.none),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    spaceH,
                    spaceH,
                    spaceH,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
