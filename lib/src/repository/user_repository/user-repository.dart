import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rku_bus_guide/src/constants/colors.dart';
import 'package:rku_bus_guide/src/features/authentication/models/user_model.dart';

//User For perfrom Database Operations

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) async {
    await _db
        .collection("Users")
        .add(user.toJson())
        .whenComplete(() => Get.snackbar("Succes", "Your Account is created",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green.withOpacity(0.1),
            colorText: Colors.green))
        .catchError((error, stackTrace) {
      Get.snackbar("Error", "Somthing went wrong.please try again",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
      print(error.toString());
    });
  }
}
