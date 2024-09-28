import 'package:flutter/material.dart';

// Color Styles
const primaryColor = Color.fromRGBO(23, 133, 5, 1);
const secondaryColor = Color.fromRGBO(33, 00, 93, 1);
const dangerColor = Color.fromARGB(255, 213, 20, 7);
const whiteColor = Color.fromRGBO(255, 255, 255, 1);
const blackColor = Color.fromRGBO(0, 0, 0, 1);

// Text Styles
const TextStyle header = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.w700,
  color: blackColor,
);

const TextStyle title = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w700,
  color: blackColor,
);

const TextStyle body = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
  color: blackColor,
);

const TextStyle bodyItalic = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: blackColor,
    fontStyle: FontStyle.italic);

const TextStyle small = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
  color: Colors.grey,
);

// Button Styles
final ButtonStyle pryBtn = ElevatedButton.styleFrom(
  backgroundColor: primaryColor,
  foregroundColor: whiteColor,
  textStyle: const TextStyle(
    fontSize: 18.0,
  ),
);

final ButtonStyle pryBtnOutline = OutlinedButton.styleFrom(
  foregroundColor: primaryColor,
  side: const BorderSide(color: primaryColor),
  textStyle: const TextStyle(
    fontSize: 18.0,
  ),
);

// Input Styles
const InputDecoration inputTheme = InputDecoration(
  border: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
    // borderRadius: BorderRadius.circular(20),
  ),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  ),
  labelStyle: TextStyle(
    color: Colors.grey,
    fontStyle: FontStyle.italic,
  ),
);
