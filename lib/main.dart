import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'modules/features/home_screen/view/home_screen_page.dart';
import 'modules/features/login/view/login_page.dart';
import 'package:pubg_mobile_nepal/theme/theme.dart';

import 'modules/features/welcome/view/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kLightTheme,
      home: WelcomePage(),
    );
  }
}
