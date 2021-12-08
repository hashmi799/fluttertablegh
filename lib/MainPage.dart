import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginDashboard.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPageCreateSatet(),
    );
  }
}

class MainPageCreateSatet extends StatefulWidget {
  @override
  State<MainPageCreateSatet> createState() => _MainPageState();
}

class _MainPageState extends State<MainPageCreateSatet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            Container(

              height: 150,
              width: 200,
              child: Image(image: AssetImage('assets/images/masjid.jpg'),
            ),),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Expanded(
                      child: Text("DEEN CONNECT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Expanded(
                      child: Text("Welcome to deen connect app help to you achive your tablegh jamat goals ",style: TextStyle(fontWeight:
                      FontWeight.normal),)
                  ),
                ),
              ),
            ],
          ),

            SizedBox(height: 30,),
            Align(
              alignment: Alignment.topRight,
              child:  Container(
                margin: const EdgeInsets.only( right: 20.0),
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginDashboard()),
                    );
                  },
                  child: Text(
                    'Start',
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
