import 'package:easy_localization1/home_page.dart';
import 'package:easy_localization1/pages/info_page.dart';
import 'package:easy_localization1/pages/intro_page.dart';
import 'package:easy_localization1/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [
          Locale('en', 'US'),
          Locale('ja', 'JP'),
          Locale('ko', 'KR')
        ],
        path: 'assets/translations',
        // <-- change the path of the translation files
        fallbackLocale: Locale('en', 'US'),
        saveLocale: true,
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: IntroPage(),
      routes: {
          IntroPage.id:(context)=>IntroPage(),
          MainPage.id:(context)=>MainPage(),
      },

    );
  }
}
