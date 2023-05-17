import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rku_bus_guide/src/features/authentication/views/welcome_screen/welcome-screen.dart';
import 'package:rku_bus_guide/src/features/core/views/dashboard/dashboard_screen.dart';
import 'package:rku_bus_guide/src/repository/authentication_repository/exceptions/signup_email_password_exceptions.dart';

class   AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Varialble
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

//Check User Login Or Not

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => WelcomeScreen())
        : Get.offAll(() => Dashboard());
  }

  // SIGN-UP CODE
  Future<String?> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => Dashboard())
          : Get.offAll(() => WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordException.code(e.code);
      print('FIREBASE AUTH EXCEPTION -${ex.message}');
      throw ex;
    } catch (_) {
      final ex = SignUpWithEmailAndPasswordException();
      print('EXCEPTION -${ex.message}');
      throw ex;
    }
  }

  // LOGIN-CODE
  Future<String?> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      // final ex = lo.fromCode(e.code);
      // return ex.message;
    // } catch (_) {
    //   const ex = LogInWithEmailAndPasswordFailure();
    //   return ex.message;
    }
  }

  // LOGOUT
  Future<void> logout() async => await _auth.signOut();
}
