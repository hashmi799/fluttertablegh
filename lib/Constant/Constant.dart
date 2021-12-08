import 'package:flutter/material.dart';

class Constant{

  static AppBar commonAppbar(String text,BuildContext context){


    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => {}
      ),
      backgroundColor: Colors.blueGrey,
      iconTheme: IconThemeData(
        
        color: Colors.black, //change your color here
      ),
      title: Text("$text".toUpperCase()),
      centerTitle: true,
    );
  }

}