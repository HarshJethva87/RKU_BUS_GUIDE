import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rku_bus_guide/src/constants/strings.dart';
import 'package:rku_bus_guide/src/features/authentication/views/forgot_password/forgot_password.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 30.0,
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              labelText: MyUserEmailLable,
              hintText: MyUserEmail,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text(MyResetPasswordBtn)))
        ]),
      ),
    );
  }
}
