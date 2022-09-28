import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class EditProfilescreen extends StatefulWidget {
  const EditProfilescreen({Key? key}) : super(key: key);

  @override
  State<EditProfilescreen> createState() => EditProfilescreen1();
}

class EditProfilescreen1 extends State<EditProfilescreen> {



//Color ? myColor  =  Colors.deepPurple;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff432267),
        appBar: AppBar(
          backgroundColor: Color(0xff432267),
          elevation: 0,
          leading:
          InkWell(
            onTap:(){setState(() {
              Navigator.pop(context);
            });},
            child: Icon(Icons.arrow_back, color: Color(0xffFEFEFE),),
          ),

          title: Text("Edit Profile",style: TextStyle(fontSize: 23),),
          centerTitle: true,
          actions: [
            Padding(padding: EdgeInsets.only(top: 20,right: 15),
              child: InkWell(
                  onTap:(){
                    setState(() {
                      Navigator.pop(context);
                    });
                  } ,
                  child: Text("Cancel",style: TextStyle(fontSize: 18,color:Color(0xffE99000)) ,)
              ),
            )
          ],


        ),
        body: ListView(
          children: [
            Column(

//crossAxisAlignment: CrossAxisAlignment.center,
//mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(110),
                      child: Container(
//padding: EdgeInsets.only(left:wid3 ),
                        alignment: Alignment.center,
                        height: 200,
                        width: 200,
//color: Colors.green,
                        child: Image.asset("assets/image/login.png",
                          fit: BoxFit.cover,height: 200,width: 200,),
                      ),
                    ),
                    Positioned(

                      child: InkWell(
                        onTap: (){


                        },

                        child:CircleAvatar(
                            backgroundColor: Colors.deepPurple,


//radius: 5,


                            child:  Icon(Icons.edit,color: Colors.white,size: 30,)



                        ),

//child: Icon(Icons.ed,color: Colors.white,size: 30,),

                      ),
                      bottom: 1,
                      right: 0.2,
//left: 85,

                    )
                  ],
                ),
                SizedBox(height:20 ,),

                Padding(padding: EdgeInsets.only(top: 25,left: 25,right: 25,bottom: 5),
                  child:Container(
//width: wid,
                    height: 60,
//color: Colors.cyan,

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20) ),color:Color(0xffE99000)),
                          child: Icon(Icons.person_pin,color: Color(0xff432267),size: 35,),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width-110,
                          height: 60,
                          alignment: Alignment.center,
                          child: TextField(
//controller: username_controller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(0),
                                      topRight: Radius.circular(20),bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(0))
                              ),
                              hintText: "ahmed ezz elarab ",
                              hintStyle: TextStyle(color: Color(0xff432267),fontSize: 19,fontWeight:FontWeight.bold),

                            ),

                          ),
                        ),

                      ],
                    ),

                  ), ),
                Padding(padding: EdgeInsets.only(top: 5,left: 25,right: 25,bottom: 5),
                  child:Container(
// width: wid,
                    height: 60,
//color: Colors.cyan,

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20) ),color: Color(0xffE99000)),
                          child: Icon(Icons.mail,color: Color(0xff432267),size: 30,),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width-110,
                          height: 60,
                          alignment: Alignment.center,
                          child: TextField(
//controller: email_controller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(0),
                                      topRight: Radius.circular(20),bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(0))
                              ),
                              hintText: "ezz9028@gmail.com",
                              hintStyle: TextStyle(color: Color(0xff432267),fontSize: 19,fontWeight:FontWeight.bold),
                            ),

                          ),
                        )

                      ],
                    ),

                  ), ),
                Padding(padding: EdgeInsets.only(top: 5,left: 25,right: 25,bottom: 5),
                  child:Container(
//width: wid,
                    height: 60,
//color: Colors.cyan,

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20) ),color: Color(0xffE99000)),
                          child: Icon(Icons.home,color: Color(0xff432267),size: 30,),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width-110,
                          height: 60,
                          alignment: Alignment.center,
                          child: TextField(
//controller: City_controller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(0),
                                      topRight: Radius.circular(20),bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(0))
                              ),
                              hintText: "ismailia.Egypt",
                              hintStyle: TextStyle(color: Color(0xff432267),fontSize: 19,fontWeight:FontWeight.bold),
                            ),

                          ),
                        )
                      ],
                    ),

                  ), ),
                Padding(padding: EdgeInsets.only(top: 5,left: 25,right: 25,bottom: 5),
                  child:Container(
// width: wid,
                    height: 60,
//color: Colors.cyan,

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20) ),color: Color(0xffE99000)),
                          child: Icon(Icons.place,color: Color(0xff432267),size: 30,),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width-110,
                          height: 60,
                          alignment: Alignment.center,
                          child: TextField(
//controller: street1_controller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(0),
                                      topRight: Radius.circular(20),bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(0))
                              ),
                              hintText: "16 gerga St .ismailia.Egypt",
                              hintStyle: TextStyle(color: Color(0xff432267),fontSize: 19,fontWeight:FontWeight.bold),
                            ),

                          ),
                        ),
                      ],
                    ),

                  ), ),
                Padding(padding: EdgeInsets.only(top: 5,left: 25,right: 25,bottom: 5),
                  child:Container(
// width: wid,
                    height: 60,
//color: Colors.cyan,

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20) ),color: Color(0xffE99000)),
                          child: Icon(Icons.phone,color: Color(0xff432267),size: 30,),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width-110,
                          height: 60,
                          alignment: Alignment.center,
                          child: TextField(
//controller: street1_controller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(0),
                                      topRight: Radius.circular(20),bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(0))
                              ),
                              hintText: "+201229176652",
                              hintStyle: TextStyle(color: Color(0xff432267),fontSize: 19,fontWeight:FontWeight.bold),
                            ),

                          ),
                        ),
                      ],
                    ),

                  ), )

                ,SizedBox(height:60,),

                Container(
                  height: 50,

//width: ,
                  margin: EdgeInsets.only(top: 55),
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),color: Color(0xffE99000)),
                  alignment: Alignment.center,
// color: Colors.orangeAccent,
                  child: InkWell(
                    onTap: (){

                    },
                    child: Text("Save",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                ),


              ],
            ),
          ],
        )
    );}}