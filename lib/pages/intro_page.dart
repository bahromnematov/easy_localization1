import 'package:easy_localization1/pages/main_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  static final String id="intro_page";
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF031F2B),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/intro.jpg"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Oddiy hayotdan qoching",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Text(
                  'key with the font family name, and a "fonts" key with a# list giving the asset and other descriptors',
                  style: TextStyle(color: Colors.white.withOpacity(0.6)),
                )
              ],
            ),
          )),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, MainPage.id);
            },
            child: Container(
              height: 56,
              margin: EdgeInsets.only(left: 22, right: 22, bottom: 20),
              decoration: BoxDecoration(
                  color: Color(0xFF5EDFFF),
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "Boshladik",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 21),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
