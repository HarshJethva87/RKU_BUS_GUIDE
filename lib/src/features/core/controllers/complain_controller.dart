import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/list_notifier.dart';
import 'package:rku_bus_guide/src/features/authentication/models/user_model.dart';
import 'package:rku_bus_guide/src/features/core/models/complain_model.dart';
import 'package:rku_bus_guide/src/features/core/views/complain_page/complain_class.dart';
import 'package:rku_bus_guide/src/features/core/views/dashboard/dashboard_screen.dart';
import 'package:rku_bus_guide/src/repository/authentication_repository/authentication_repository.dart';
import 'package:rku_bus_guide/src/repository/user_repository/user-repository.dart';

class ComplainController extends GetxController {
Rx<List<ComplainModel>> complainList = Rx<List<ComplainModel>>([]);
List<ComplainModel> get complain => complainList.value;

  @override
  void onReady() {
    complainList.bindStream(FirestoreDb.todoStream());
  }


}
