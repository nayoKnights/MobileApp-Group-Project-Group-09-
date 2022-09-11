import 'package:flutter/material.dart';
import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/landing_page.dart';
import 'package:kcommerce/screens/onboard.dart';
import 'package:kcommerce/screens/signup.dart';


class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
          text: 'Login',
          fontSize: 20,
          fontWeight: bold,
        ),
        centerTitle: true,
        leading: const SizedBox(),
      ),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(account),
                ),
                CommonTextField(
                  controller: emailController,
                  label: 'Email',
                  hintText: 'Email',
                  validator: (value) {
                    return value!.isEmpty ? 'Invalid Input' : null;
                  },
                ),
                spaceH,
                CommonTextField(
                  controller: passwordController,
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
                  validator: (value) {
                    return value!.isEmpty ? 'Invalid Input' : null;
                  },
                  hintText: 'Password',
                ),
                const Spacer(),
                CommonButton(
                    width: size.width - 20,
                    label: "LOGIN",
                    borderColor: blue2,
                    borderRadius: 5,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        navigatePushReplace(
                            destination: const LandingPage(), context: context);
                      }
                    }),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CommonText(text: "I don't have an account"),
                      TextButton(
                          onPressed: () {
                            navigatePushReplace(
                                destination: const SignUp(), context: context);
                          },
                          child: CommonText(
                            text: 'Sign Up',
                            fontWeight: bold,
                          ))
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
