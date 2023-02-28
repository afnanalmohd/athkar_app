import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



// lottie //

Widget lottie() {
  return Container(
    child: Lottie.network(
        'https://assets7.lottiefiles.com/packages/lf20_jHQFCoODST.json'),
  );
}
