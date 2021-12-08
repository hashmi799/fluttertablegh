import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserInfoCreateSatet(),
    );
  }
}

class UserInfoCreateSatet extends StatefulWidget {
  @override
  State<UserInfoCreateSatet> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfoCreateSatet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade400,
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white54,
                  border: Border.all(color: Colors.grey.shade700),
                  borderRadius: BorderRadius.circular(5),
              ),
              margin: EdgeInsets.all(10),
              height: 100,
              width: double.infinity,
              child:  Row(
                children: [
                  Container(

                    child:  Image(image: AssetImage('assets/images/masjid.jpg')),

                    width: MediaQuery.of(context).size.width/4,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        userData("Name", "Khan"),
                        userData("CNIC", "123-1234556-6"),
                        userData("Adress", "Sultan town Lahore"),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width/1.5,
                  ),

                ],
              ),
            );
          },
        )

    );
  }

  Widget userData(String filedname,String data){
    return Row(children: [
      Text("$filedname:",style: TextStyle(
          fontWeight: FontWeight.bold
      ),),
      SizedBox(width: 5,),
      Text("$data",style: TextStyle(
      ),),
    ],);
  }
}
