import 'package:flutter/material.dart';
import 'package:whatsupclone/screens/loginscreen/loginscreen.dart';
import 'package:whatsupclone/widgets/uihelper.dart';

class Onboardscreen extends StatelessWidget {
  const Onboardscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/image.png'),
            SizedBox(
              height: 20,
            ),
            Uihelper.CustomText(
              text: 'Welcome to WhatsApp',
              height: 20,
              color: Color(0XFF000000),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: 'Read out', height: 14),
                Uihelper.CustomText(
                    text: ' Privacy Policy.',
                    height: 14,
                    color: Color.fromARGB(255, 10, 78, 204)),
                Uihelper.CustomText(
                  text: ' Tap “Agree and continue”',
                  height: 14,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: 'to accept the', height: 14),
                Uihelper.CustomText(
                    text: ' Teams of Service',
                    height: 14,
                    color: Color.fromARGB(255, 10, 78, 204)),
              ],
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(
        callback: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Loginscreen()));
        },
        buttonName: 'Agree and continue',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
