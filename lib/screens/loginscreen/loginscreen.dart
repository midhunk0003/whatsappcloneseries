import 'package:flutter/material.dart';
import 'package:whatsupclone/widgets/uihelper.dart';

class Loginscreen extends StatefulWidget {
  Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController phoneController = TextEditingController();
  String selectedCountry = "India";

  List<String> country = [
    "America",
    "Africa",
    "Australia",
    "India",
    "Pakistan",
    "Sri Lanka",
    "Bangladesh",
    "China",
    "Japan",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
            child: Uihelper.CustomText(
              text: "Enter your phone number",
              height: 20,
              color: Color(0XFF00A884),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Uihelper.CustomText(
            text: "WhatsApp will need to verify your phone",
            height: 16,
            color: Color.fromARGB(255, 88, 88, 88),
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 6,
          ),
          Uihelper.CustomText(
            text: "number. Carrier charges may apply.",
            height: 16,
            color: Color.fromARGB(255, 88, 88, 88),
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 6,
          ),
          Uihelper.CustomText(
            text: "What’s my number?",
            height: 16,
            color: Color(0XFF00A884),
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: DropdownButtonFormField(
              value: selectedCountry,
              items: country.map((String country) {
                return DropdownMenuItem(
                  value: country,
                  child: Text(country),
                );
              }).toList(),
              onChanged: (value) {
                setState(
                  () {
                    selectedCountry = value!;
                  },
                );
              },
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFF00A884),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFF00A884),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "+91",
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF00A884),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF00A884),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF00A884),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter number",
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF00A884),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF00A884),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF00A884),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: Uihelper.CustomButton(
        callback: () {},
        buttonName: "Next",
      ),
    );
  }
}
