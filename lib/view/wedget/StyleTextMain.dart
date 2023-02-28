import 'package:flutter/material.dart';

class style_Text_Main extends StatelessWidget {
  ///define the variable //
  final String text_main;


  ///constructor ///

  style_Text_Main(this.text_main);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          "$text_main",
          style: TextStyle(fontSize: 50, color: Color(0XFF52343e)),
        ),
      );
  }
}
