import 'package:flutter/material.dart';
import 'package:rku_bus_guide/src/common_widgets/form/form_header_widget.dart';
import 'package:rku_bus_guide/src/constants/images_path.dart';
import 'package:rku_bus_guide/src/constants/strings.dart';
import 'package:rku_bus_guide/src/features/authentication/views/forgot_password/forgot_password_form_widget.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

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
                  image: MyForgotImg,
                  title: MyForgotPageTitle,
                  subTitle: MyForgotPageSubTitle),
              ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    ));
  }
}
