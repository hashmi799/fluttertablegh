import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertablegh/AdminDashBoard.dart';
import 'package:fluttertablegh/Constant/Constant.dart';
import 'package:fluttertablegh/UserDashBoard.dart';

class Login extends StatelessWidget {
  bool isAdmin;

  Login(this.isAdmin);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Constant.commonAppbar("Login", context),
      backgroundColor: Colors.grey.shade100,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Center(
                child: Expanded(
                    child: Text(
                  "DEEN CONNECT",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
              ),
            ),
            Container(
              height: 120,
              width: 120,
              child: FittedBox(
                child: Image.asset('assets/images/logo.png'),
                fit: BoxFit.fill,
              ),
            ),
            Column(
              children: [
                Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54),
                        ),
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(color: Colors.black),
                        labelText: 'Email',
                        hintText: 'Enter valid email id as abc@gmail.com'),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.grey,
                            focusColor: Colors.grey,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                            ),
                            labelStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Enter secure password'),
                      ),
                    )),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20)),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20)),
                      child: FlatButton(
                        onPressed: () {
                          if (isAdmin) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AdminDashBoard()));
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserDashBoard()));
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
