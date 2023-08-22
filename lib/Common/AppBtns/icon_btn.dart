import 'package:flutter/material.dart';

import '../AppText/app_text.dart';

class IconBtn extends StatelessWidget {
  const IconBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300, spreadRadius: 1, blurRadius: 1)
          ]),
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              height: 25,
              width: 25,
              image: AssetImage(
                "assets/auth/fb.png",
              ),
            ),
            CustomText(
              title: "Sign In with Facebook",
              size: 13,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 25,
              width: 25,
            ),
          ],
        ),
      ),
    );
  }
}
