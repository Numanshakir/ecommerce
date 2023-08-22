import 'package:flutter/material.dart';

class PrimaryBTN extends StatelessWidget {
  const PrimaryBTN({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: MediaQuery.of(context).size.width,
      onPressed: () {},
      color: Colors.blue,
    );
  }
}
