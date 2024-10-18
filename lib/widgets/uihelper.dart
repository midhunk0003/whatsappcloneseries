import 'dart:ui';

import 'package:flutter/material.dart';

class Uihelper {
  static CustomButton(
      {required VoidCallback callback, required String buttonName}) {
    return SizedBox(
      height: 45,
      width: 370,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          buttonName,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }

  static CustomText({
    required String text,
    required double height,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Color(0XFF5E5E5E),
        fontSize: height,
        fontWeight: fontWeight,
      ),
    );
  }
}
