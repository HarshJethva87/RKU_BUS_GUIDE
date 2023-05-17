import 'package:flutter/material.dart';
import 'package:rku_bus_guide/src/constants/images_path.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          // cardx5M (43:175)
          margin: EdgeInsets.fromLTRB(0, 0, 1, 290),
          padding: EdgeInsets.fromLTRB(119, 14, 119, 14),
          width: 386,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Color(0x0a000000),
                offset: Offset(0, 2),
                blurRadius: 24,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // image1JX (43:177)
                margin: EdgeInsets.fromLTRB(25, 0, 23, 12),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffdce9e9),
                  borderRadius: BorderRadius.circular(63),
                ),
                child: Center(
                  // autogroupuknbvwH (Y6t4isod3m7tP6gQwqUknB)
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      MySplashScreenImage,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ),
              Container(
                // textRd9 (43:180)
                width: double.infinity,
                height: 38,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // chaplainmondoveraF9 (43:181)
                      margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                      child: Text(
                        'Harsh Jethva',
                      ),
                    ),
                    Container(
                      // 5So (43:182)
                      margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'hjethva314@rku.ac.in',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
