import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cart.dart';
import 'checkout.dart';
import 'checkout2.dart';
import 'checkout3.dart';
import 'editProfile.dart';
import 'editcards.dart';
import 'home.dart';
import 'intro1.dart';
import 'login.dart';
import 'intro2.dart';
import 'order.dart';
import 'order_history.dart';
import 'profile.dart';
import 'intro3.dart';


void main() {

  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Introscreen1(),
    );
  }
}

