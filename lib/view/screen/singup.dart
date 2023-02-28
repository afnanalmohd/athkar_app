import 'package:authwithfirebase/controller/authController.dart';
import 'package:authwithfirebase/view/screen/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../wedget/StyleTextMain.dart';
import '../wedget/StyleTextSecondry.dart';
import '../wedget/StyleTextThird.dart';
import '../wedget/button.dart';
import '../wedget/form_filed.dart';


class singup extends StatelessWidget {

  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
  //  var usernameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

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
                  height: 120,
                ),
                style_Text_Main("تسجيل جديد"),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: style_Text_secondry("انشا حسابك الان "),
                ),

                // /// text filed ///
                // Padding(
                //   padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                //   child: from_filed(
                //     iconData: Icon(Icons.person),
                //     controller: usernameController,
                //     text_hint: ' اسم المستخدم ',
                //   ),
                // ),

                /// text filed ///
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                    child: from_filed(
                      iconData: Icon(Icons.email),
                      controller: emailController,
                      text_hint: ' الايميل ',
                    )),

                /// text filed ///
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                    child: from_filed(
                      controller: passwordController,
                      iconData: Icon(Icons.lock),
                      text_hint: "كلمة المرور",
                    )),

                /// text filed ///
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                    child: from_filed(
                      controller: passwordController,
                      iconData: Icon(Icons.lock),
                      text_hint: "كلمة المرور",
                    )),

                /// text filed ///
                Center(
                  // child:// Padding(
                  //  padding:
                  // EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                  child: style_Text_thired(
                    "اهلا فيك ، اذا تسجلت معانا يعني انك موافق علي \n الشروط و الاحكام  عشام م تقول م قلنالك اقراها كويس",
                  ),
                ),
                //),

                ///login button ///
                Padding(
                  padding: EdgeInsets.all(20),
                  child: GestureDetector(
                        onTap: (){
                     //  AuthController.instance.singup(  emailController.text.trim(),passwordController.text.trim());

                       },
                      child: button(
                          "تسجيل جديد",
                          () => AuthController.instance.singup(emailController.text.trim(),passwordController.text.trim())
                      )
                  ),
                ),

                /// text filed ///
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                    child: Text.rich(TextSpan(
                        text: " لديك حساب بالفعل؟",
                        style:
                            TextStyle(fontSize: 15, color: Color(0XFF7E460D)),
                        children: [
                          TextSpan(
                              text: "الدخول",
                              style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.to(Login());
                                }),
                        ]))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
