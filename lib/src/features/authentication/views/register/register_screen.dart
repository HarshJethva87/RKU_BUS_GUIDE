import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rku_bus_guide/src/common_widgets/form/form_header_widget.dart';
import 'package:rku_bus_guide/src/constants/colors.dart';
import 'package:rku_bus_guide/src/constants/images_path.dart';
import 'package:rku_bus_guide/src/constants/strings.dart';
import 'package:rku_bus_guide/src/features/authentication/views/login/login_screen.dart';
import 'package:rku_bus_guide/src/features/authentication/views/register/register_form_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                FormHeaderWidget(
                    image: MyRegisterImg,
                    title: MyRegisterPageTitle,
                    subTitle: MyRegisterPageSubTitle),
                RegisterFrom(),
                Center(
                  child: TextButton(
                    onPressed: () => Get.to(() => LoginScreen()),
                    child: Text.rich(
                      TextSpan(
                          text: MyRegisterPageAccount,
                          style: Theme.of(context).textTheme.bodyLarge,
                          children: [
                            TextSpan(
                              text: MyLoginBtn,
                              style: TextStyle(color: Color(0xFF60DBE0)),
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


