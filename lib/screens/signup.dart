import 'package:flutter/material.dart';
import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/landing_page.dart';
import 'package:kcommerce/screens/login.dart';
import 'package:kcommerce/screens/onboard.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController indexNumberController = TextEditingController();

  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.5,
        title: CommonText(
          text: 'Create Account',
          fontSize: 20,
          fontWeight: bold,
        ),
        centerTitle: true,
        leading: const SizedBox(),
      ),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  CommonTextField(
                    controller: firstNameController,
                    label: 'First Name',
                    hintText: 'First Name',
                    validator: (value) {
                      return validate(value!);
                    },
                  ),
                  spaceH,
                  CommonTextField(
                    controller: lastNameController,
                    label: 'Last Name',
                    hintText: 'Last Name',
                    validator: (value) {
                      return validate(value!);
                    },
                  ),
                  spaceH,
                  CommonTextField(
                    controller: indexNumberController,
                    label: 'Index Number',
                    hintText: 'Index Number',
                    validator: (value) {
                      return validate(value!);
                    },
                  ),
                  spaceH,
                  CommonTextField(
                    controller: emailController,
                    label: 'Email',
                    hintText: 'e.g.kpaaz@gmail.com',
                    validator: (value) {
                      return validate(value!);
                    },
                  ),
                  spaceH,
                  CommonTextField(
                    controller: passwordController,
                    validator: (value) {
                      return validate(value!);
                    },
                    label: 'Password',
                    obscureText: showPassword,
                    suffix: !showPassword
                        ? IconButton(
                            icon: Icon(
                              Icons.visibility,
                              color: grey1,
                              size: 16,
                            ),
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                          )
                        : IconButton(
                            icon: Icon(
                              Icons.visibility_off,
                              size: 16,
                              color: grey1,
                            ),
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                          ),
                    hintText: 'Password',
                  ),
                  SizedBox(
                    height: size.height * (1 / 25),
                  ),
                  CommonButton(
                      width: size.width - 20,
                      label: "SIGN UP",
                      borderColor: blue2,
                      borderRadius: 5,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          navigatePushReplace(
                              destination: const LandingPage(),
                              context: context);
                        }
                      }),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CommonText(text: "Already have an account"),
                        TextButton(
                            onPressed: () {
                              navigatePushReplace(
                                  destination: Login(), context: context);
                            },
                            child: CommonText(
                              text: 'Sign In',
                              fontWeight: bold,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }

  validate(String value) {
    return value.isEmpty ? 'Invalid Input' : null;
  }
}

class CommonTextField extends StatelessWidget {
  const CommonTextField(
      {Key? key,
      required this.controller,
      required this.label,
      this.validator,
      this.height,
      this.fontWeight,
      this.obscureText,
      required this.hintText,
      this.onChanged,
      this.suffix})
      : super(key: key);

  final String label;
  final String hintText;
  final FontWeight? fontWeight;
  final TextEditingController controller;
  final Widget? suffix;
  final bool? obscureText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: label,
          fontWeight: fontWeight ?? normal,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: height ?? 70,
          child: TextFormField(
            controller: controller,
            validator: validator,
            onChanged: onChanged,
            obscureText: obscureText ?? false,
            decoration: InputDecoration(
                hintText: hintText,
                suffix: suffix,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
          ),
        ),
      ],
    );
  }
}
