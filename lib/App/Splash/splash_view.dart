import 'dart:async';

import 'package:flutter/material.dart';

import '../Authentication/View/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Timer(Duration(seconds: 3), () {
      print("call back");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginView()));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "E Commerce",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
