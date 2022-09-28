import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'intro2.dart';
import 'intro3.dart';



class Introscreen1 extends StatefulWidget {
  const Introscreen1({Key? key}) : super(key: key);

  @override
  State<Introscreen1> createState() => Introscreen1state();
}

class Introscreen1state extends State<Introscreen1> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff432267),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 170),
            child: Container(
              margin: EdgeInsets.all(30),
              child:
              Image.asset("assets/image/intro1.png"),

            ),
          ),
          SizedBox(height: 60,),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Text("We strive to have a positive impact on customers ,employees,small business, the economy,and communities",
              style: TextStyle(
                color:  Color(0xffFEFEFE),

                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                      "Skip",
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
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff432267),),elevation: MaterialStateProperty.all(0),),
                  onPressed: (){

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Introscreen2()
                        )
                    );



                  },

                  //  style :ElevatedButton.styleFrom(),
                  child: const Text(
                    "Next",
                    style: TextStyle(fontSize: 25,color: Color(0xffE99000),),
                  ),

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
                            color: Color(0xffFEFEFE),
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