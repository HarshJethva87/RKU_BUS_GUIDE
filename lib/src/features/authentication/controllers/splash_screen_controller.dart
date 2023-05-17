import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rku_bus_guide/src/features/authentication/views/on_boarding/on_boarding_screen.dart';

import '../views/welcome_screen/welcome-screen.dart';

class SplashScreenController extends GetxController{

  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
     animate.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    Get.to(WelcomeScreen());

  }
}