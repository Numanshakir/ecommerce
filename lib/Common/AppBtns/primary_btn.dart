import 'package:flutter/material.dart';

class PrimaryBTN extends StatelessWidget {
  final VoidCallback onPressed;
  const PrimaryBTN({super.key,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: MediaQuery.of(context).size.width,
      onPressed: onPressed,
      color: Colors.blue,
    );
  }
}
