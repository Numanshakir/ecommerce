import 'package:flutter/material.dart';

class PrimaryFormField extends StatelessWidget {
  const PrimaryFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: "Email",
          hintText: "abc@gmail.com",
          labelStyle: TextStyle(color: Colors.black),
        ));
  }
}
