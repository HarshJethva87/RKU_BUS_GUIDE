import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rku_bus_guide/firebase_options.dart';
import 'package:rku_bus_guide/src/features/authentication/views/splash_screen/splash_screen.dart';
import 'package:rku_bus_guide/src/features/core/views/dashboard/dashboard_screen.dart';
import 'package:rku_bus_guide/src/repository/authentication_repository/authentication_repository.dart';
import 'package:rku_bus_guide/src/utils/themes/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
      home: Dashboard(),
    );
  }
}
