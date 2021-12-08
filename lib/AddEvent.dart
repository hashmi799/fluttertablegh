import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertablegh/Constant/Constant.dart';

class AddEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddEventCreateSatet(),
    );
  }
}

class AddEventCreateSatet extends StatefulWidget {
  @override
  State<AddEventCreateSatet> createState() => _AddEventState();
}

class _AddEventState extends State<AddEventCreateSatet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Constant.commonAppbar("Add Event", context),
      backgroundColor: Colors.grey.shade200,
      body: Container(

        child:
        Column(

          children: <Widget>[


            Container(
            ),

           Column(
             children: [
               Align(

                 child:
                 Container(
                   child:
                   Column(children: [

                     Align(alignment: Alignment.topLeft,child:
                     Container(margin:EdgeInsets.only(left: 10) ,child: Text("Event Name",style: TextStyle(fontSize: 20),),),),
                     SizedBox(width: 10,),

                     Container(
                       margin: EdgeInsets.all(10),
                       child: TextFormField(
                           cursorColor: Colors.lightGreen,
                           decoration: InputDecoration(
                             labelText: 'Event Name',
                             hintText: 'Enter Event Name',
                             focusedBorder: OutlineInputBorder(
                                 borderSide: BorderSide(
                                     color: Colors.black
                                 )
                             ),
                             border: OutlineInputBorder(
                                 borderSide: BorderSide()
                             ),
                           )
                       ),
                     ),

                   ],),

                 ),
                 alignment: Alignment.centerRight,
               ),
               SizedBox(height: 20,),
               Align(

                 child:
                 Container(
                   child:
                   Column(children: [

                     Align(alignment: Alignment.topLeft,child:
                     Container(margin:EdgeInsets.only(left: 10) ,child: Text("Event Detail",style: TextStyle(fontSize: 20),),),),
                     SizedBox(width: 10,),

                     Container(
                       margin: EdgeInsets.all(10),
                       child: TextFormField(
                           cursorColor: Colors.lightGreen,
                           decoration: InputDecoration(
                             labelText: 'Event Detail',
                             hintText: 'Enter event Detail',
                             focusedBorder: OutlineInputBorder(
                                 borderSide: BorderSide(
                                     color: Colors.black
                                 )
                             ),
                             border: OutlineInputBorder(
                                 borderSide: BorderSide()
                             ),
                           )
                       ),
                     ),

                   ],),

                 ),
                 alignment: Alignment.centerRight,
               ),
             ],
           ),
            Align(
              child:     Container(
                margin: const EdgeInsets.only(right: 20.0),                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              alignment: Alignment.bottomRight,
            ),

          ],
        ),
      ),
    );
  }
}
