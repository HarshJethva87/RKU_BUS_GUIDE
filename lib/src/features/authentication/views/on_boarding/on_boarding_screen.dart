import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:rku_bus_guide/src/constants/colors.dart';
import 'package:rku_bus_guide/src/constants/images_path.dart';
import 'package:rku_bus_guide/src/constants/strings.dart';
import 'package:rku_bus_guide/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:rku_bus_guide/src/features/authentication/models/on_boarding_model.dart';
import 'package:rku_bus_guide/src/features/authentication/views/on_boarding/on_boarding_screen_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    final obcontroller = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obcontroller.pages,
            liquidController: obcontroller.controller,
            onPageChangeCallback: obcontroller.onPageChangedCallback,
            slideIconWidget: Icon(Icons.arrow_back_ios, color: MyBlackColor),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
              child: OutlinedButton(
            onPressed: () => obcontroller.animateToNextSlide(),
            style: ElevatedButton.styleFrom(
              side: BorderSide(color: MyBlackColor),
              shape: CircleBorder(),
              padding: EdgeInsets.all(20.0),
              onPrimary: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: MySecondryBlackColor,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.arrow_forward_ios),
            ),
          )),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: ()=> obcontroller.skip(),
              child: Text("Skip"),
            ),
          ),
          Obx(
            ()=> Positioned(
              bottom: 10.0,
              child: AnimatedSmoothIndicator(
                  activeIndex: obcontroller.currentPage.value, count: 3, effect: WormEffect(
                activeDotColor: Color(0xFF272727),
                dotHeight: 5.0,
              ),
              ),
            ),
          )
        ],
      ),
    );
  }


}
