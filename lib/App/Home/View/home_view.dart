import 'package:ecommerce/App/Authentication/View/sign_up_view.dart';
import 'package:ecommerce/Common/AppBtns/icon_btn.dart';
import 'package:ecommerce/Common/AppBtns/primary_btn.dart';
import 'package:ecommerce/Common/AppText/app_text.dart';
import 'package:flutter/material.dart';

import '../../../Common/FormFields/primary_form_field.dart';
import 'Components/crousel_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          top: false,
          bottom: true,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.3,
                  child: Stack(
                    // alignment: Alignment.center,
                    children: [
                      CrouselView(),
                      // Align(
                      //   alignment: Alignment.center,
                      //   child: Container(
                      //     width: MediaQuery.of(context).size.width,
                      //     height: MediaQuery.of(context).size.height / 2.3,
                      //     decoration: BoxDecoration(
                      //         image: DecorationImage(
                      //             fit: BoxFit.cover,
                      //             image: AssetImage("assets/bg@3x.png"))),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(top: 55),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width - 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                        ),
                      ),
                    ],
                  ),
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
