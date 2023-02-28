import 'package:authwithfirebase/controller/authController.dart';
import 'package:flutter/material.dart';

import '../wedget/button.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(100),
        child: GestureDetector(

            child: button(
                "تسجيل خروج",
                    () => AuthController.instance.logOut(),
            )
        ),
      ),
      );

  }
}
