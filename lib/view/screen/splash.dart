
import 'package:authwithfirebase/view/screen/singup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/lottie.dart';
import '../wedget/StyleTextMain.dart';
import '../wedget/StyleTextSecondry.dart';
import '../wedget/button.dart';
import 'login.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      /// for backfround /////
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                height: 350,
                 child: lottie(),
                 decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/noor.png"))),
                
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 20),
                  child: style_Text_Main("اذكار المسلم ")),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child:
                    style_Text_secondry(" (أَلَا بِذِكْرِ اللَّهِ تَطْمَئِنُّ الْقُلُوبُ) "),
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      button("تسجيل الدخول ", () => Get.to(Login()) ),
                      button("حساب جديد", () => Get.to(singup())),
                    ],
                  ))
            ],
          ),
        ),

      ),
    );
  }
}
