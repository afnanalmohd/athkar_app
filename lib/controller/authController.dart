
import 'package:authwithfirebase/view/screen/login.dart';
import 'package:authwithfirebase/view/screen/singup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../view/screen/home.dart';

/// first step in controller write extend from GetxController ////
class AuthController extends GetxController {

 // final AuthController authController = Get.find();
   static AuthController instance = Get.find();


  ///model from firebase auth
  late Rx<User?> _user;

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    // _user = auth.currentUser as Rx<User?>;
    ///or //
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _startScreen);
  }

  _startScreen(User? user) {
    if (user == null) {
      print("login page");
      Get.offAll(() => Login());
    } else {
      Get.offAll(() => home());
    }
  }

  /// singup  method ////

  void singup(String email, password)  async{
    try {
     await  auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar(" about login ", "user massage",
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "لم تستطيع التسجيل",
            style: TextStyle(color: Colors.blue),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(color: Colors.blue),
          ));
    }
  }

   /// login  method ////

   void login(String email, password)  async{
     try {
       await  auth.signInWithEmailAndPassword(email: email, password: password);
     } catch (e) {
       Get.snackbar(" about login ", "user massage",
           snackPosition: SnackPosition.BOTTOM,
           titleText: Text(
             "لا تستطيع الدخول لحسابك",
             style: TextStyle(color: Colors.blue),
           ),
           messageText: Text(
             e.toString(),
             style: TextStyle(color: Colors.blue),
           ));
     }
   }

    ///logout  ///

   void logOut () async{
    await auth.signOut();
   }

}


