import 'package:ecommerce/App/APISModule/View/albums_view.dart';
import 'package:ecommerce/App/Categories/View/categories_view.dart';
import 'package:ecommerce/Statemanagent/counter_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'App/FirebaseModule/View/users_info.dart';
import 'App/Splash/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ECommerce',
      home: UsersInfoView(),
    );
  }
}
