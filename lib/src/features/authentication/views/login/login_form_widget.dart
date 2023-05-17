import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rku_bus_guide/src/constants/strings.dart';
import 'package:rku_bus_guide/src/features/authentication/controllers/login_page_controller.dart';
import 'package:rku_bus_guide/src/features/authentication/views/forgot_password/forgot_password.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final lcontroller = Get.put(LoginController());
    // final _formKey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Form(
        // key: _formKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 30.0,
          ),
          TextFormField(
            controller: lcontroller.email,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              labelText: MyUserEmailLable,
              hintText: MyUserEmail,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          TextFormField(
            controller: lcontroller.password,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.password_outlined),
              labelText: MyUserPasswordLable,
              hintText: MyUserPassword,
              suffixIcon: IconButton(
                  onPressed: null, icon: Icon(Icons.remove_red_eye_sharp)),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () => Get.to(() => const ForgotPassword()),
              child: const Text(
                MyForgotPassword,
                style: TextStyle(color: Color(0xFF60DBE0)),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                LoginController.instance.loginUser(
                  lcontroller.email.text.trim(),
                  lcontroller.password.text.trim()
                );
              },
              child:  Text(MyLoginBtn.toUpperCase()),
            ),
          )
        ]),
      ),
    );
  }
}
