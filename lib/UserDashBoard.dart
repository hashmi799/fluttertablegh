import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NamazInfo.dart';

class UserDashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserDashBoardCreateSatet(),
    );
  }
}

class UserDashBoardCreateSatet extends StatefulWidget {
  @override
  State<UserDashBoardCreateSatet> createState() => _UserDashBoardState();
}

class _UserDashBoardState extends State<UserDashBoardCreateSatet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body:     Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 70),
            child: Align(
              alignment: Alignment.topCenter,
              child: Expanded(
                  child: Text(
                    "User Home",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height/2,


            child: Align(
              alignment: Alignment.topCenter,
              child:  Column(
                children: [
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(20)),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Group info',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
          ),


        ],
      ),
    );
  }
}
