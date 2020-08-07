import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        alignment: Alignment(-12, 0),
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30,
                        color: Colors.deepPurple[600],
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Spacer(),
                    Text(
                      'Create New \nYour Account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Spacer(),
                    Image.asset(
                      'images/logo_hi.png',
                      height: 40,
                    ),
                  ],
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
                      padding: const EdgeInsets.fromLTRB(24, 40, 24, 0),
                      child: ListView(children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(bottom: 16),
                              child: Stack(children: <Widget>[
                                Align(
                                  child: Icon(
                                    Icons.account_circle,
                                    size: 90,
                                    color: Colors.indigo[100],
                                  ),
                                ),
                                Align(
                                  heightFactor: 3.1,
                                  alignment: Alignment(0, 1),
                                  child: Container(
                                    height: 31,
                                    width: 31,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Icon(
                                      Icons.add_circle,
                                      color: Colors.deepPurple[600],
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            inputField(
                                'Your Name',
                                'Full Name',
                                Icon(Icons.person_pin,
                                    color: Colors.deepPurple[600])),
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
                            inputField(
                                'Confirm Your Password',
                                'Confirm Password',
                                Icon(Icons.verified_user,
                                    color: Colors.deepPurple[600]),
                                suffix: Icon(Icons.visibility,
                                    color: Colors.indigo[100]),
                                secure: true),
                            Container(
                              margin: EdgeInsets.only(top: 40),
                              child: FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: Colors.indigo[100],
                                  splashColor: Colors.deepPurple[200],
                                  child: Icon(Icons.arrow_forward),
                                  onPressed: () {}),
                            )
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
