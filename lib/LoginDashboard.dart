
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

class LoginDashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(

   body: Container(
     height: MediaQuery.of(context).size.height,
     child: Column(
       children: [
         SizedBox(
           height: MediaQuery.of(context).size.height/2.4,
         ),
         Align(
           alignment: Alignment.topCenter,
           child:  Container(
             margin: const EdgeInsets.only( right: 20.0),
             height: 50,
             width: 200,
             decoration: BoxDecoration(
                 color: Colors.blueGrey,
                 borderRadius: BorderRadius.circular(20)),
             child: FlatButton(
               onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login(true)));               },
               child: Text(
                 'Admin',
                 style: TextStyle(color: Colors.white, fontSize: 25),
               ),
             ),
           ),
         ),
         SizedBox(height: 50,),
         Align(
           alignment: Alignment.topCenter,
           child:  Container(
             margin: const EdgeInsets.only( right: 20.0),
             height: 50,
             width: 200,
             decoration: BoxDecoration(
                 color: Colors.blueGrey,
                 borderRadius: BorderRadius.circular(20)),
             child: FlatButton(
               onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login(false)));
               },
               child: Text(
                 'User',
                 style: TextStyle(color: Colors.white, fontSize: 25),
               ),
             ),
           ),
         )

       ],
     ),
   ),
 );
  }

}