import 'package:flutter/material.dart';
import 'package:rku_bus_guide/src/common_widgets/grid_dashboard.dart';
import 'package:rku_bus_guide/src/common_widgets/slider_widgets.dart';
import 'package:rku_bus_guide/src/constants/colors.dart';
import 'package:rku_bus_guide/src/constants/strings.dart';
import 'package:rku_bus_guide/src/features/core/views/search_page/search_page.dart';
import 'package:rku_bus_guide/src/repository/authentication_repository/authentication_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: SafeArea(
        child: Column(
          children: <Widget>[
               SizedBox(
              height: 15,
            ),
            CarouselSliderClass(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Good Morning Hasrh",
                          style: TextStyle(
                              color: MyBlackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 4,
                      ),
                      Text("This are the following options",
                          style: TextStyle(
                              color: MyBlackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GridDashboard()
          ],
        ),
      ),
    );

  }
}
