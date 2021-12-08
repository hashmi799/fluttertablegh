import 'package:fluttertablegh/Constant/Constant.dart';
import 'package:fluttertablegh/GroupInfo.dart';
import 'package:fluttertablegh/NamazInfo.dart';
import 'package:fluttertablegh/UserInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AddEvent.dart';

class AdminDashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdminDashBoardCreateSatet(),
    );
  }
}

class AdminDashBoardCreateSatet extends StatefulWidget {
  @override
  State<AdminDashBoardCreateSatet> createState() => _AdminDashBoardState();
}

class _AdminDashBoardState extends State<AdminDashBoardCreateSatet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Constant.commonAppbar("Admin Home", context),
      backgroundColor: Colors.grey.shade200,
      body: Container(

        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(

            ),
            Container(
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Schedule',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Container(
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {

                },
                child: Text(
                  'Group info',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Container(
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserInfo()));

                },
                child: Text(
                  'Member info',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Container(
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => GroupInfo()));

                },
                child: Text(
                  'Group in Queue',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Container(
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => GroupInfo()));

                },
                child: Text(
                  'Group Dispatched',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Container(
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddEvent()));


                },
                child: Text(
                  'Add Events',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Container(
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NamazInfo()),
                  );

                },
                child: Text(
                  'Namaz time',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
