import 'package:flutter/material.dart';
import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/landing_page.dart';
import 'package:kcommerce/screens/onboard.dart';
import 'package:kcommerce/screens/profile.dart';
import 'package:kcommerce/screens/signup.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.5,
        title: CommonText(
          text: 'Update Profile',
          fontSize: 20,
          fontWeight: bold,
        ),
        centerTitle: true,
        leading: const SizedBox(),
      ),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: SizedBox(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(account),
                    ),
                    spaceH,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon:   Icon(
                              Icons.camera_enhance,
                                                            color: black.withOpacity(0.5),

                              size: 30,
                            )),
                        spaceW,
                        spaceW,
                        IconButton(
                            onPressed: () {},
                            icon:  Icon(
                              Icons.photo,
                              color: black.withOpacity(0.5),
                              size: 30,
                            ))
                      ],
                    ),
                    spaceH,
                    CommonTextField(
                      controller: nameController,
                      label: 'Full name',
                      hintText: 'Hanneial Amaley Tagoe',
                      validator: (value) {
                        return value!.isEmpty ? 'Invalid Input' : null;
                      },
                    ),
                    spaceH,
                    CommonTextField(
                      controller: emailController,
                      label: 'Email',
                      hintText: 'email@gmail.com',
                      validator: (value) {
                        return value!.isEmpty ? 'Invalid Input' : null;
                      },
                    ),
                    CommonTextField(
                      controller: locationController,
                      label: 'Location',
                      hintText: 'Greater Accra',
                      validator: (value) {
                        return value!.isEmpty ? 'Invalid Input' : null;
                      },
                    ),
                    spaceW,
                    CommonTextField(
                      controller: phoneNumberController,
                      label: 'Phone Number',
                      hintText: '0504233919',
                      validator: (value) {
                        return value!.isEmpty ? 'Invalid Input' : null;
                      },
                    ),
                    spaceH,
                    CommonButton(
                        width: size.width - 20,
                        label: "SAVE",
                        borderColor: blue2,
                        borderRadius: 5,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            navigatePushReplace(
                                destination: const Profile(), context: context);
                          }
                        }),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
