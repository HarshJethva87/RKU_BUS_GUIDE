import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rku_bus_guide/src/constants/strings.dart';
import 'package:rku_bus_guide/src/features/authentication/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1000),
                top: splashController.animate.value ? 100 : 0,
                left: 0,
                right: 0,
                child: const Image(
                  image: AssetImage("assets/images/app_logo.png"),
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                  duration: Duration(milliseconds: 1000),
                  bottom: 80,
                  left: 0,
                  right: splashController.animate.value ? 0 : -50,
                  child: AnimatedOpacity(
                    opacity: splashController.animate.value ? 1 : 0,
                    duration: Duration(milliseconds: 1000),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          MyAppName,
                          style: TextStyle(fontSize: 26),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
