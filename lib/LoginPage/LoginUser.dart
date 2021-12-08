
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginUserCreateState(),
    );
  }
}

class LoginUserCreateState extends StatefulWidget {
  @override
  LoginUserSate createState() => LoginUserSate();
}

class LoginUserSate extends State<LoginUserCreateState> {
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