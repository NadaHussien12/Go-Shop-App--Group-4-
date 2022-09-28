import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'intro1.dart';

class Logoutscreen extends StatefulWidget {
  const Logoutscreen({Key? key}) : super(key: key);

  @override
  State<Logoutscreen> createState() => Logoutscreenstate();
}

class Logoutscreenstate extends State<Logoutscreen> {
  @override
  Widget build(BuildContext context) {
    // var _mediaQuery = MediaQuery.of(context);
    bool _isObscure = true;

    return Scaffold(
      backgroundColor: Color(0xff432267),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height:70,
            ),
            Image.asset(
              'assets/image/Group -1.png',
              height: 300,
              width: double.infinity,
            ),
            SizedBox(
              height: 80,
            ),
            Text("Are you sure you want to logout ?",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,
              fontFamily: 'JosefinSans',
              color: Color(0xffFEFEFE),

            ),textAlign: TextAlign.center,),
            SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

             children: [
               ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200)),minimumSize: Size(150,50),primary: Color(0xffE99000)),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Introscreen1()
    )
    );
    },
                   child: const Text("Logout",style: TextStyle(fontSize: 20,fontFamily: 'JosefinSans'))
               ),
               ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200)),minimumSize: Size(150,50),primary: Color(0xffE99000)),
                   onPressed: (){
                 Navigator.pop(context) ;
                   },
                   child: const Text("Cancel",style: TextStyle(fontSize: 20,fontFamily: 'JosefinSans'),)
               ),
             ],



            ),



          ],


        ),

      ),
    );
  }
}