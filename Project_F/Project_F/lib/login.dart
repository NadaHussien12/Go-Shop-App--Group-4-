import 'package:flutter/material.dart';
import 'home.dart';
import 'register.dart';
import 'package:untitled/register.dart';
import 'forgetpass.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Forgetpassscre()
                        )
                    );

                  },
                  child: const Text(
                    'Forget password?',
                    style: TextStyle(
                      color: Color(0xffFEFEFE),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 160,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => homeScreen2()
                        )
                    );
                  },
                  child: const Text(
                    'Log  in  ',
                    style: TextStyle(
                      color: Color(0xffE99000),
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'JosefinSans',
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  child: const VerticalDivider(
                    color: Color(0xffFEFEFE),
                    thickness: 2,
                    indent: 2,
                    endIndent: 2,
                  ),
                ),
                TextButton(
                  onPressed: () {

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Registerscreen()
                        )
                    );
                  },
                  child: const Text(
                    '  Register',
                    style: TextStyle(
                      color:  Color(0xffFEFEFE),
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'JosefinSans',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
