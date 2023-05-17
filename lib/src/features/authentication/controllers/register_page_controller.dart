import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rku_bus_guide/src/features/authentication/models/user_model.dart';
import 'package:rku_bus_guide/src/features/core/views/dashboard/dashboard_screen.dart';
import 'package:rku_bus_guide/src/repository/authentication_repository/authentication_repository.dart';
import 'package:rku_bus_guide/src/repository/user_repository/user-repository.dart';

class RegisterController extends GetxController {
  static RegisterController get instance => Get.find();

  //TextFiled Controller For Get Data

  final username = TextEditingController();
  final email = TextEditingController();
  final mobileno = TextEditingController();
  final password = TextEditingController();

  final userRepo = Get.put(UserRepository());

  void registerUser(String email, String password) {
    String? error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }

  //Authenaatication
  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    registerUser(user.email, user.password);
    Get.to(() => Dashboard());
  }
}
