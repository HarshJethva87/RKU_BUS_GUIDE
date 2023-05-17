import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rku_bus_guide/src/common_widgets/form/form_header_widget.dart';
import 'package:rku_bus_guide/src/constants/colors.dart';
import 'package:rku_bus_guide/src/constants/images_path.dart';
import 'package:rku_bus_guide/src/constants/strings.dart';
import 'package:rku_bus_guide/src/features/authentication/views/login/login_form_widget.dart';
import 'package:rku_bus_guide/src/features/authentication/views/register/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                    image: MyLoginImg,
                    title: MyLoginPageTitle,
                    subTitle: MyLoginPageSubTitle),
                LoginForm(),
                SizedBox(
                  height: 35.0,
                ),
                Center(
                  child: TextButton(
                    onPressed: () => Get.to(() => RegisterScreen()),
                    child: Text.rich(
                      TextSpan(
                          text: MyLoginPageNoAccount,
                          style: Theme.of(context).textTheme.bodyLarge,
                          children: [
                            TextSpan(
                              text: MyRegisterBtn,
                              style: TextStyle(color: MyPrimaryColor),
                            )
                          ]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
