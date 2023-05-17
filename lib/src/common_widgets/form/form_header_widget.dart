import 'package:flutter/material.dart';
import 'package:rku_bus_guide/src/constants/images_path.dart';
import 'package:rku_bus_guide/src/constants/strings.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({Key? key,

    required this.image,
    required this.title,
    required this.subTitle

  }) : super(key: key);

  final String image,title,subTitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
            child: Image(
                image: AssetImage(image),
                height: size.height * 0.3)),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
