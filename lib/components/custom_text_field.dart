import 'package:flutter/material.dart';
import 'package:login_page/login_page.dart';

class CustomTextField extends StatefulWidget {
  late String hint;
  late bool obscureText = false;

  Function(String) callback;

  CustomTextField(this.callback,
      {required this.hint, required this.obscureText});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.teal[50],
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          onChanged: (text) {
            widget.callback(text);
          },
          obscureText: widget.obscureText,
          style: TextStyle(
            color: Colors.black45,
          ),
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
