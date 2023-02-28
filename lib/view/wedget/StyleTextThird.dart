
import 'package:flutter/material.dart';

class style_Text_thired extends StatelessWidget {
  ///define the variable //
  final String text_third;

  ///constructor ///

  style_Text_thired(this.text_third);

  @override
  Widget build(BuildContext context) {
    return Text("$text_third", style: TextStyle(fontSize: 15, color:  Color(0Xff728E65)));

  }
}