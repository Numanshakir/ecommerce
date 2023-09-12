import 'package:ecommerce/App/APISModule/View/albums_view.dart';
import 'package:ecommerce/App/Categories/View/categories_view.dart';
import 'package:ecommerce/Statemanagent/counter_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'App/Splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ECommerce',
      home: AlbumsView(),
    );
  }
}
