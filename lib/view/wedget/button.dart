import 'package:flutter/material.dart';

class button extends StatelessWidget {

  ///define the variable //
  final String Text_Button; // text
  final Function() onPressed;

  ///constructor ///
  button(this.Text_Button, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Color(0XFf52343e)),
        onPressed: onPressed,
        child: Text(
          "$Text_Button",
          style: TextStyle(fontSize: 20),
        ),
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
    );
  }
}
