import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'intro1.dart';
import 'intro3.dart';

class Introscreen2  extends StatefulWidget {
  const Introscreen2 ({Key? key}) : super(key: key);

  @override
  State<Introscreen2> createState() => Introscreen2state();
}

class Introscreen2state extends State<Introscreen2> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff432267),
      body: Column(
        children: [
          SizedBox(height: 37,),
          Container(

            child : Align(alignment :Alignment.topRight,
              child:
              TextButton(

                  onPressed: (){

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Introscreen1()
                        )
                    );
                  }, child: Text("skip",style: TextStyle(color :Color(0xffE99000),fontSize: 20),textAlign: TextAlign.right,)),),),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: 300,
              margin: EdgeInsets.all(20),
              child:
              Image.asset("assets/image/intro2.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 65,),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Text("We promote the fact that we offer free shipping for all orders",
              style: TextStyle(
                color: Color(0xffFEFEFE),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff432267),),elevation: MaterialStateProperty.all(0)),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Introscreen1()
                          )
                      );
                    },
                    child: const Text(
                      "Back",
                      style: TextStyle(fontSize: 25),
                    )
                ),
                const Text(
                  "|",
                  style: TextStyle(
                      fontSize: 40,
                      color: Color(0xffFEFEFE),
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff432267),),elevation: MaterialStateProperty.all(0)),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Introscreen3()
                          )
                      );
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(fontSize: 25,color:Color(0xffE99000)),
                    )
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      Container(
                        height: 10,
                        width: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),topLeft: Radius.circular(35)),
                          color: Color(0xffE99000),
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(35),topRight: Radius.circular(35)),
                          color: Color(0xffE99000),
                        ),

                      )

                    ],
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  height: 10,
                  width: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffFEFEFE),
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}