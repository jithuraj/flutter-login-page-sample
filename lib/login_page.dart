import 'package:flutter/material.dart';
import 'package:login_page/components/custom_action_button.dart';
import 'package:login_page/components/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  static String username = '';
  static String password = '';

  // Function(String) callback;
  //
  // LoginPage(this.callback);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String abc = 'bb';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                "company name$abc",
              ),
            ),
          ),
          Expanded(
            child: Text('description goes here'),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  CustomTextField(
                    callback,
                    hint: 'Username',
                    obscureText: false,
                  ),
                  CustomTextField(
                    callback,
                    hint: 'Password',
                    obscureText: true,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomActionButton(),
        ],
      ),
    );
  }

  callback(newAbc) {
    setState(() {
      abc = newAbc;
    });
  }
}
