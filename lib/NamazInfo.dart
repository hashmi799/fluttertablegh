import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertablegh/Constant/Constant.dart';

// class NamazInfo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: NamazInfoCreateSatet(),
//     );
//   }
// }
//
// class NamazInfoCreateSatet extends StatefulWidget {
//   @override
//   State<NamazInfoCreateSatet> createState() => _NamazInfoState();
// }

class NamazInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return
      Scaffold(
        appBar: Constant.commonAppbar("Namaz Time", context),
        body:  Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [

              SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 10,
              ),
              Container(
                height:hight/3 ,
                child: Image(image: AssetImage("assets/images/time.png")),
              ),
              SizedBox(height: 20,),
              Container(


                width: width,
                child: Column(
                  children: [

                    namazRow("Fajar", "6:10",context),
                    namazRow("Zuhar", "6:10",context),
                    namazRow("Asir", "6:10",context),
                    namazRow("Maghrib", "6:10",context),
                    namazRow("Ishah", "6:10",context),
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }

  Widget namazRow(String type,String time ,BuildContext context){
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade700)
      ),
      width: MediaQuery.of(context).size.width,
      child:Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width/2-19,
            child:  Center(
                child: Text("$type:")
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width/2-19,
            child:  Center(
                child: Text("$time:")
            ),
          ),


        ],
      ),
    );
  }
}
