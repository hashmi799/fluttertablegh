
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GroupInfoCreateSatet(),
    );
  }
}

class GroupInfoCreateSatet extends StatefulWidget {
  @override
  State<GroupInfoCreateSatet> createState() => _GroupInfoState();
}

class _GroupInfoState extends State<GroupInfoCreateSatet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body:
Center(child:       Container(
  height: 200,
  width: double.infinity,
  margin: EdgeInsets.all(20),

  color: Colors.white,

  child:
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Text("Group In Queue:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

      Text("2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),


    ],
  ),
),)
    );
  }
}
