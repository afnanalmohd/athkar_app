
import 'package:flutter/material.dart';

class from_filed extends StatelessWidget {

  ///define the variable //
  final String text_hint;
   Widget iconData;
   final TextEditingController controller;




  ///constructor ///
  from_filed({required this.iconData, required this.text_hint, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: TextFormField(
          controller: controller ,
        decoration: InputDecoration(
          hintText: text_hint,
          hintTextDirection:null ,
          hintStyle: TextStyle(color: Color(0xff999999)),

             /// icon //
         prefixIcon: iconData,
          iconColor: Color(0xff999999),

             /// border ///
          border: OutlineInputBorder(

              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(color: Color(0XFF738D68)),),
        )
        )
    );
  }
}
