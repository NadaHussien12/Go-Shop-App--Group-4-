import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'register.dart';
import 'intro2.dart';
import 'login.dart';
class Introscreen3 extends StatefulWidget {
  const Introscreen3({Key? key}) : super(key: key);

  @override
  State<Introscreen3> createState() => Introscreen3state();
}

class Introscreen3state extends State<Introscreen3> {
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
                            builder: (context) => Introscreen2()
                        )
                    );
                  }, child: Text("skip",style: TextStyle(color :Color(0xffE99000),fontSize: 20),textAlign: TextAlign.right,)),),),

          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Container(
              height: 300,
              margin: EdgeInsets.all(20),
              child:
              Image.asset("assets/image/intro3.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 60,),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Text("Be sure to log in to ba able to book newly added offers",
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
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff432267)),elevation: MaterialStateProperty.all(0)),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login()
                          )
                      );
                    },
                    child: const Text(
                      "Log in",
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
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff432267)),elevation: MaterialStateProperty.all(0)),
                    onPressed: (){

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Registerscreen()
                          )
                      );
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(fontSize: 25),
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
                         // borderRadius: BorderRadius.only(bottomRight: Radius.circular(35),topRight: Radius.circular(35)),
                          color: Color(0xffE99000),
                        ),

                      )

                    ],
                  ),
                ),
                //const SizedBox(width: 7,),
                Container(
                  height: 10,
                  width: 22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(35),topRight: Radius.circular(35)),
                    color: Color(0xffE99000)
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
