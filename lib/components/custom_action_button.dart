import 'package:flutter/material.dart';
import 'package:login_page/values/constants.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.green[400],
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Login',
          style: TextStyle(
              color: Colors.white, fontFamily: kFontPoppinsBold, fontSize: 18),
        ),
      ),
    );
  }
}
