import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rku_bus_guide/src/constants/strings.dart';
import 'package:rku_bus_guide/src/features/authentication/controllers/register_page_controller.dart';
import 'package:rku_bus_guide/src/features/authentication/models/user_model.dart';

class RegisterFrom extends StatelessWidget {
  const RegisterFrom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final rcontroller = Get.put(RegisterController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: rcontroller.username,
              decoration: const InputDecoration(
                  label: Text(MyUsernameLable),
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  hintText: MyUsername),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              controller: rcontroller.email,
              decoration: const InputDecoration(
                  label: Text(MyUserEmailLable),
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: MyUserEmail),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              controller: rcontroller.mobileno,
              decoration: const InputDecoration(
                  label: Text(MyUserMobileNoLable),
                  prefixIcon: Icon(Icons.numbers_outlined),
                  hintText: MyUserMobileNo),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              controller: rcontroller.password,
              decoration: const InputDecoration(
                  label: Text(MyUserPasswordLable),
                  prefixIcon: Icon(Icons.password_outlined),
                  hintText: MyUserPassword),
            ),
            const SizedBox(
              height: 15.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // RegisterController.instance.registerUser(
                    //     rcontroller.email.text.trim(),
                    //     rcontroller.password.text.trim());
                    final user = UserModel(
                      email: rcontroller.email.text.trim(),
                      password: rcontroller.password.text.trim(),
                      username: rcontroller.username.text.trim(),
                      mobileno: rcontroller.mobileno.text.trim(),
                    );
                    RegisterController.instance.createUser(user);
                  }
                },
                child: Text(MyRegisterBtn.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
