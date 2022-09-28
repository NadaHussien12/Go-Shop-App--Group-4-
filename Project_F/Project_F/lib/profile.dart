import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'cart.dart';
import 'checkout.dart';
import 'editProfile.dart';
import 'home.dart';
import 'order_history.dart';
import 'wishlist.dart';

class profile1 extends StatefulWidget {
  const profile1({Key? key}) : super(key: key);


  @override
  State<profile1> createState() => _profile1State();
}

class _profile1State extends State<profile1> {
  @override
  Widget build(BuildContext context) {
    return  const ZoomDrawer(
      menuScreen: drawerScreen(),
      mainScreen: profile(),
      borderRadius: 20,
      showShadow: true,
      angle: 0,
      menuBackgroundColor: Color.fromRGBO(67, 34, 103, 1.0) ,
    );

  }
}

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  Color purple=Color.fromRGBO(67, 34, 103, 1.0);
  Color lpurplet=Color.fromRGBO(159, 148, 171, 1.0);
  Color lOrange=Color.fromRGBO(233, 188, 107, 1.0);
  Color orange =Color.fromRGBO(233, 144, 0, 1.0);
  Color white=Color.fromRGBO(254, 254, 254, 1.0);
  @override
  Widget build(BuildContext context) {
    //var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      //drawer: DrawerScreen(),

      appBar: AppBar(
        backgroundColor: Color(0xff432267),
        elevation: 0,
        leading:
        InkWell(
          onTap:(){} ,
          child: Icon(Icons.menu, color: Colors.white,),
        ),

        title: Text("Profile",style: TextStyle(fontSize: 25),),
        centerTitle: true,
        actions: [
          Padding(padding: EdgeInsets.only(right: 15),
            child: InkWell(
              onTap:(){
              } ,
              child:Icon(
                Icons.home,
                color: Color(0xffFEFEFE),
              ),
            ),
          )
        ],


      ),

      body: Column(

        children: [

          Container(
            color: Color(0xff432267),
            height: 200,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 15,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/image/user2.jfif',
                      height: 150,
                      width: 150,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height:10,
                ),
                const Text(
                  'Sama Said',
                  style: TextStyle(
                    color: Color(0xffFEFEFE),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'SamaSaid@gmail.com',
                  style: TextStyle(
                    color: Color(0xffE99000),
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 45,
          ),
          InkWell(
            onTap: () {

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EditProfilescreen()
                  )
              );

            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 10,
              ),
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xff432267),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.edit_note,
                      color: Color(0xffE99000),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Color(0xffFEFEFE),
                          fontSize: 24,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 10,
              ),
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xff432267),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.shopping_cart,
                      color: Color(0xffE99000),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        'Cart',
                        style: TextStyle(
                          color: Color(0xffFEFEFE),
                          fontSize: 24,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {

            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 10,
              ),
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xff432267),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.favorite,
                      color: Color(0xffE99000),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        'Wishlist',
                        style: TextStyle(
                          color: Color(0xffFEFEFE),
                          fontSize: 24,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 10,
              ),
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xff432267),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.feed,
                      color: Color(0xffE99000),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        'Order History',
                        style: TextStyle(
                          color: Color(0xffFEFEFE),
                          fontSize: 24,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 10,
              ),
              height:60,
              decoration: BoxDecoration(
                color: Color(0xff432267),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.credit_card,
                      color: Color(0xffE99000),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        'Cards',
                        style: TextStyle(
                          color: Color(0xffFEFEFE),
                          fontSize: 24,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}