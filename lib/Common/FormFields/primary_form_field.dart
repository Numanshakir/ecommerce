import 'package:flutter/material.dart';

class PrimaryFormField extends StatelessWidget {
  final TextEditingController controller;
  final String errorMessage;

   PrimaryFormField({super.key,required this.controller,this.errorMessage=""});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      
        keyboardType: TextInputType.number,
        validator: (value) {
          
          if((value==null || value=="") && errorMessage.isNotEmpty){
          return errorMessage;
          }else{

         return null;


          }
          
        },
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: "Email",
          hintText: "abc@gmail.com",
          labelStyle: TextStyle(color: Colors.black),
        ));
  }
}
