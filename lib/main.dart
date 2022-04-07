import 'package:flutter/material.dart';
import 'package:login_page/login_page.dart';
import 'package:login_page/values/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: kFontPoppinsRegular,
      ),
      home: LoginPage(),
    );
  }
}
