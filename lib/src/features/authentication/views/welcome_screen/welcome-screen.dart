import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rku_bus_guide/src/constants/colors.dart';
import 'package:rku_bus_guide/src/constants/images_path.dart';
import 'package:rku_bus_guide/src/constants/strings.dart';
import 'package:rku_bus_guide/src/features/authentication/views/login/login_screen.dart';
import 'package:rku_bus_guide/src/features/authentication/views/register/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(MyWelcomeScreenImg),
              height: height * 0.6,
            ),
            Column(
              children: [
                Text(MyWelcomeScreenTitle,
                    style: Theme.of(context).textTheme.headlineSmall),
                Text(
                  MyWelcomeScreenSubTitle,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                  onPressed: () {
                    Get.to(() => LoginScreen());
                  },
                  child: Text(MyLoginBtn.toUpperCase()),
                )),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => RegisterScreen());
                    },
                    child: Text(MyRegisterBtn.toUpperCase()),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
