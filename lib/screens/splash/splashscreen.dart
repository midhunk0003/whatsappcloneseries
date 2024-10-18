import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsupclone/screens/onboarscreen/onboardscreen.dart';
import 'package:whatsupclone/widgets/uihelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Onboardscreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/whatsapplogo.png'),
          SizedBox(
            height: 20,
          ),
          Uihelper.CustomText(
            text: 'WhatsApp',
            height: 18,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    ));
  }
}
