import 'package:flutter/material.dart';
import 'login.dart';
import 'package:http/http.dart' as http;





class Registerscreen extends StatefulWidget {
  const Registerscreen({Key? key}) : super(key: key);

  @override
  State<Registerscreen> createState() => Registerscreenstate();
}

class Registerscreenstate extends State<Registerscreen> {


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
              height:50,
            ),
            Image.asset(
              'assets/image/Group -1.png',
              height: 200,
              width: double.infinity,
            ),
            SizedBox(
              height: 30,
            ),

            const TextField(

              style: TextStyle(
                color: Color(0xffE99000),

              ),


              decoration: InputDecoration(
                // labelStyle: TextStyle(color: Colors.orange),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffFEFEFE),
                  ),
                ),

                label: Text(
                  'E-mail',

                  style: TextStyle(
                    color: Color(0xffFEFEFE),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'JosefinSans',
                    fontSize: 20,
                  ),
                ),
              ),

            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: _isObscure,
              style: const TextStyle(
                color: Color(0xffE99000) ,
              ),
              decoration: InputDecoration(

                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color:Color(0xffFEFEFE),

                  ),

                ),
                labelText:
                //const Text(
                'Password',
                labelStyle: TextStyle(
                  color: Color(0xffFEFEFE),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'JosefinSans',
                  fontSize: 20,

                ),
                //),
                suffixIcon: IconButton(
                  icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,color: Color(0xff9F94AB)),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            const TextField(
              style: TextStyle(
                color: Color(0xffE99000),
              ),
              decoration: InputDecoration(
                // labelStyle: TextStyle(color: Colors.orange),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffFEFEFE),
                  ),
                ),
                label: Text(
                  'User name',
                  style: TextStyle(
                    color: Color(0xffFEFEFE),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'JosefinSans',
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            const TextField(
              style: TextStyle(
                color: Color(0xffE99000),
              ),
              decoration: InputDecoration(
                // labelStyle: TextStyle(color: Colors.orange),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffFEFEFE),
                  ),
                ),
                label: Text(
                  'Phone number',
                  style: TextStyle(
                    color: Color(0xffFEFEFE),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'JosefinSans',
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            Container(
              height: 50,
               color: Color(0xffE99000),
               width:200 ,
              margin: EdgeInsets.only(top: 55),

              alignment: Alignment.center,

              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login()
                      )
                  );

                },
                child: Text("Create Account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),


               ],


        ),

      ),
    );
  }
}
