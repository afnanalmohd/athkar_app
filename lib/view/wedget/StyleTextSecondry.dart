import 'package:flutter/material.dart';

class style_Text_secondry extends StatelessWidget {
  ///define the variable //
  final String text_second;

  ///constructor ///

  style_Text_secondry(this.text_second);

  @override
  Widget build(BuildContext context) {
    return Text("$text_second", style: TextStyle(fontSize: 25, color:  Color(0Xff728E65)));

  }
}
