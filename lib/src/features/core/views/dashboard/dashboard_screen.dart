import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rku_bus_guide/src/constants/colors.dart';
import 'package:rku_bus_guide/src/constants/images_path.dart';
import 'package:rku_bus_guide/src/constants/strings.dart';
import 'package:rku_bus_guide/src/features/core/views/complain_page/complain.dart';
import 'package:rku_bus_guide/src/features/core/views/home_page/home.dart';
import 'package:rku_bus_guide/src/features/core/views/profile_page/profile.dart';
import 'package:rku_bus_guide/src/features/core/views/search_page/search_page.dart';
import 'package:rku_bus_guide/src/repository/authentication_repository/authentication_repository.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {



  // list Of Page

  List BottomSheetPages =[
    HomePage(),
    SearchPage(),
    ComplainPage(),
    ProfilePage()
  ];

  // Tap Functionality
  int _currentIndex = 0;

  void onTap(int index){
    setState(() {
      _currentIndex = index;
    });



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        //Bottom NavBar

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
            onTap: onTap,
            selectedItemColor: Color(0xFF8EB4B5),
            unselectedItemColor: Color(0xFF303030),
            elevation: 0,
            items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: MyBottomNavTab1),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: MyBottomNavTab2),
          BottomNavigationBarItem(
              icon: Icon(Icons.notes), label: MyBottomNavTab3),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: MyBottomNavTab4),
        ]),
      body: BottomSheetPages[_currentIndex],

        );
  }
}
