import 'package:ecommerce/App/Authentication/View/sign_up_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
// Navigator.pop(context);

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpView()));
        // Navigator.pushReplacement(
        //     context, MaterialPageRoute(builder: (context) => SignUpView()));
        // Navigator.pushAndRemoveUntil(
        //     context,
        //     MaterialPageRoute(builder: (context) => SignUpView()),
        //     (route) => false);
      }),
      appBar: AppBar(),
      backgroundColor: Colors.amber,
    );
  }
}
