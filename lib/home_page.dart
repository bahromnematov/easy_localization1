import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("text2".tr()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: Text(
              "text".tr(),
              style: TextStyle(fontSize: 20),
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 46,
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    context.setLocale(Locale('en', 'US'));
                  },
                  child: Text(
                    "English",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
              Expanded(
                  child: Container(
                height: 46,
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: MaterialButton(
                  color: Colors.green,
                  onPressed: () {
                    context.setLocale(Locale('ja', 'JP'));
                  },
                  child: Text(
                    "Yapon",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
              Expanded(
                  child: Container(
                height: 46,
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    context.setLocale(Locale('ko', 'KR'));
                  },
                  child: Text(
                    "Korea",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
            ],
          )
        ],
      ),
    );
  }
}
