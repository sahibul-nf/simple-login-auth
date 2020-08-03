import 'package:flutter/material.dart';
import 'package:login_page_flutter_ui/register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                margin: EdgeInsets.only(top: 20),
                color: Colors.indigo[100],
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      IconButton(
                          alignment: Alignment(-12, 0),
                          icon: Icon(Icons.arrow_back),
                          iconSize: 30,
                          color: Colors.deepPurple[600],
                          onPressed: () {}),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          'images/logo_hi.png',
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Container(
                    height: 600,
                    width: double.infinity,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 70, 24, 0),
                      child: ListView(children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(bottom: 40),
                                child: Text(
                                  'Welcome Back, \nExplorer!',
                                  style:
                                      TextStyle(fontSize: 20, letterSpacing: 1),
                                )),
                            inputField(
                                'example@gmail.com',
                                'Email Address',
                                Icon(Icons.email,
                                    color: Colors.deepPurple[600])),
                            inputField(
                                'Your Password',
                                'Password',
                                Icon(Icons.security,
                                    color: Colors.deepPurple[600]),
                                suffix: Icon(Icons.visibility,
                                    color: Colors.indigo[100]),
                                secure: true),
                            Container(
                              margin: EdgeInsets.only(top: 40, bottom: 70),
                              child: FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: Colors.indigo[100],
                                  splashColor: Colors.deepPurple[200],
                                  child: Icon(Icons.arrow_forward),
                                  onPressed: () {}),
                            ),
                            ToSignUp()
                          ],
                        ),
                      ]),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget inputField(String text, String label, Widget icon,
    {Widget suffix, bool secure: false}) {
  return Container(
    margin: EdgeInsets.only(top: 16),
    child: TextField(
      obscureText: secure,
      cursorColor: Colors.indigo[100],
      style: TextStyle(color: Colors.deepPurple[600]),
      decoration: InputDecoration(
          suffixIcon: suffix,
          prefixIcon: icon,
          hintText: text,
          hintStyle: TextStyle(color: Colors.indigo[100]),
          labelText: label,
          labelStyle: TextStyle(color: Colors.indigo[100]),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.indigo[100]),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.deepPurple[500]),
              borderRadius: BorderRadius.circular(8))),
    ),
  );
}

class ToSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return RegisterPage();
        }));
      },
      child: RichText(
          text: TextSpan(
              text: 'Start fresh now? ',
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  color: Colors.black),
              children: <TextSpan>[
            TextSpan(
                text: 'Sign Up',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.deepPurple[600]))
          ])),
    );
  }
}
