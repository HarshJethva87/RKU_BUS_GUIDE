import 'package:flutter/material.dart';
import 'package:rku_bus_guide/src/constants/images_path.dart';
import 'package:rku_bus_guide/src/constants/strings.dart';
import 'package:rku_bus_guide/src/features/core/views/complain_page/complain_form.dart';

class ComplainPage extends StatelessWidget {
  const ComplainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(MyBottomNavTab3)),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(MyLoginImg),
              ComplainForm(),
            ],
          ),
        ),
      ),
    );
  }
}
