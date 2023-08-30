import 'package:ecommerce/App/Authentication/View/sign_up_view.dart';
import 'package:ecommerce/App/Home/View/home_view.dart';
import 'package:ecommerce/Common/AppBtns/icon_btn.dart';
import 'package:ecommerce/Common/AppBtns/primary_btn.dart';
import 'package:ecommerce/Common/AppText/app_text.dart';
import 'package:flutter/material.dart';

import '../../../Common/FormFields/primary_form_field.dart';

class LoginView extends StatelessWidget {
   LoginView({super.key});
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
final GlobalKey<FormState> formKey = GlobalKey<FormState>();
TextEditingController email=TextEditingController();
TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      drawer: Drawer(),
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,

            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade100,
                            spreadRadius: 2,
                            blurRadius: 3)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 33,
                        ),
                        CustomText(
                          title: "Welcome to EasyShop",
                          size: 24,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        CustomText(
                          title: "Sign in to Continue",
                          size: 13,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        PrimaryFormField(controller: email,errorMessage: "Email is Required!",),
                        SizedBox(
                          height: 30,
                        ),
                        PrimaryFormField(controller: password,),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {

                                _scaffoldKey.currentState!.openDrawer();



                              },
                              child: CustomText(
                                title: "Forgot Password?",
                                size: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        PrimaryBTN(
                          onPressed: () {

                          if(formKey.currentState!.validate()){
                            print(email.text);
                            print(password.text);


                             print("object 1");
                            // Navigator.pushAndRemoveUntil(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => HomeView()),
                            //     (route) => false);

                          }



                        
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                IconBtn(),
                SizedBox(
                  height: 20,
                ),
                IconBtn(),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

// w700 bold
// 600 Semibold,
// 500 Medium
// 400 regular
