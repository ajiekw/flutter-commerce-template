import 'package:flutter/material.dart';
import 'package:flutter_commerce/constants.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: _LoginPage(),
      theme: ThemeData(
        textTheme:
            Theme.of(context).textTheme.apply(bodyColor: dTextLightColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class _LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
    );
  }
}
