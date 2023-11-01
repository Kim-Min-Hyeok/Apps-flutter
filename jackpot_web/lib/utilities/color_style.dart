import 'package:flutter/material.dart';

const Color primaryWhite = Colors.white;
const Color primaryBlue = Color(0xff88B3FF);
const Color errorRed = Colors.red;
const Color backgroundColor = Colors.black;
const Color containerBackgroundColor = Color(0xff0C1525);

// default is 80
const MaterialColor whiteScale = MaterialColor(0xffEFEFEF, {
  80: Color(0xffEFEFEF),
  100: Color(0xffFFFFFF),
});

// default is 10
const MaterialColor grayScale = MaterialColor(0xffE4E4E4, {
  10: Color(0xffE4E4E4),
  30: Color(0xffA3A3A3),
  60: Color(0xff808080),
  90: Color(0xff353535),
});

// default is 90
const MaterialColor blackScale = MaterialColor(0xff212121, {
  90: Color(0xff212121),
  100: Color(0xff000000),
});