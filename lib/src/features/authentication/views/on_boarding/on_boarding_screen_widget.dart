import 'package:flutter/material.dart';

import '../../models/on_boarding_model.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        color: model.bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image(
              image: AssetImage(model.image),
              height: size.height * 0.5,
            ),
            Text(model.title),
            Text(model.counterText),
            SizedBox(
              height: 80.0,
            ),
          ],
        ));
  }
}