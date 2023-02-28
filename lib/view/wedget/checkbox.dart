
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../screen/forgetpassword.dart';

class checkbox extends StatelessWidget {
  ///define the variable //

  bool onchange = true;

  ///constructor ///
  checkbox(this.onchange,);

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: onchange, onChanged: (val)=> { Get.to(forgetpassword())});

  }
}
