import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginAdminCreateState(),
    );
  }
}

class LoginAdminCreateState extends StatefulWidget {
  @override
  LoginAdminSate createState() => LoginAdminSate();
}

class LoginAdminSate extends State<LoginAdminCreateState> {
  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(),
      ),
    );
  }
}
