import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:rku_bus_guide/src/constants/images_path.dart';
import 'package:rku_bus_guide/src/constants/strings.dart';
import 'package:rku_bus_guide/src/features/authentication/models/on_boarding_model.dart';

import '../../../constants/colors.dart';
import '../views/on_boarding/on_boarding_screen_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: MyOnBoardingImage1,
        title: MyOnBoardingPage1Text,
        counterText: MyOnBoardingCounter1,
        bgColor: MyOnBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: MyOnBoardingImage2,
        title: MyOnBoardingPage2Text,
        counterText: MyOnBoardingCounter2,
        bgColor: MyOnBoardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: MyOnBoardingImage3,
        title: MyOnBoardingPage3Text,
        counterText: MyOnBoardingCounter3,
        bgColor: MyOnBoardingPage3Color,
      ),
    ),
  ];

  onPageChangedCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }
  skip () => controller.jumpToPage(page: 2);
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

}
