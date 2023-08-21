import 'package:ecommerce/App/Authentication/View/sign_up_view.dart';
import 'package:ecommerce/Common/AppText/app_text.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            CustomText(
              title: "Welcome to EasyShop",
              size: 24,
              fontWeight: FontWeight.w600,
            ),
            CustomText(
              title: "Sign in to Continue",
              size: 13,
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      )),
    );
  }
}

// w700 bold
// 600 Semibold,
// 500 Medium
// 400 regular
