import 'package:flutter/material.dart';
import 'package:pubg_mobile_nepal/modules/features/login/view/login_page.dart';
import 'package:pubg_mobile_nepal/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: kLightTheme,
      home: LoginPage(),
    );
  }
}
