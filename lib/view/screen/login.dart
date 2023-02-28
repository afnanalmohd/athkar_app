import 'package:authwithfirebase/view/screen/forgetpassword.dart';
import 'package:authwithfirebase/view/screen/singup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../controller/authController.dart';
import '../../controller/lottie.dart';
import '../wedget/StyleTextMain.dart';
import '../wedget/StyleTextSecondry.dart';
import '../wedget/StyleTextThird.dart';
import '../wedget/button.dart';
import '../wedget/checkbox.dart';
import '../wedget/form_filed.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _loginState();
}

class _loginState extends State<Login> {


  var emailController =TextEditingController();
  var passwordController =TextEditingController();
  
  
  /// find the controller  ////

  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    ///media query ////

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        ///for background ///
        backgroundColor: Colors.transparent,

        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/noor.png"))),

                ),


                Padding(
                  padding: EdgeInsets.all(20.0),
                  child:style_Text_secondry("اهلا للدخول لحسابك")
                ),

                /// text filed ///
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                    child: from_filed(
                         iconData: Icon(Icons.email), text_hint: ' الايميل ', controller: emailController,)),

                /// text filed ///
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                    child: from_filed(
                      iconData:  Icon(Icons.lock), text_hint: 'كلمه المرور', controller: passwordController, )),

                ///text ///
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: checkbox(true)),
                    Padding(
                        padding: EdgeInsets.only(left: 0.0),
                        child: style_Text_thired("تذكرني ")),
                    Padding(

                      padding: EdgeInsets.only(left:160),
                      child: Text.rich(TextSpan(
                          text: "نسيت كلمةالسر ؟ ",
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.to(forgetpassword());
                            })),
                    ),
                  ],
                ),

                ///login button ///
                Padding(
                  padding: EdgeInsets.all(20),
                  child: button("الدخول", () => AuthController.instance.login(emailController.text.trim(), passwordController.text.trim())),
                ),

                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text.rich(TextSpan(
                      text: "ليس لديك حساب ؟ ",
                      style: TextStyle(fontSize: 15, color: Color(0XFF7E460D)),
                      children: [
                        TextSpan(
                            text: "سجل معانا الان  ",
                            style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.none
                                ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(singup());
                              }),
                      ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
