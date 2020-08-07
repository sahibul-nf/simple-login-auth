import 'package:flutter/material.dart';
import 'package:login_page_flutter_ui/home_page.dart';
import 'package:login_page_flutter_ui/register_page.dart';
import 'package:flushbar/flushbar.dart';

class LoginPage extends StatefulWidget {

  String email;
  String password;

  LoginPage({
    this.email,
    this.password
  });  

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  LoginPage data = LoginPage(email: 'admin', password: '123');

  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

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
                            Container(
                              margin: EdgeInsets.only(top: 16),
                              child: TextField(
                                controller: emailC,
                                cursorColor: Colors.indigo[100],
                                style: TextStyle(color: Colors.deepPurple[600]),
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.email,
                                        color: Colors.deepPurple[600]),
                                    hintText: 'example@gmail.com',
                                    hintStyle:
                                        TextStyle(color: Colors.indigo[100]),
                                    labelText: 'Email Address',
                                    labelStyle:
                                        TextStyle(color: Colors.indigo[100]),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.indigo[100]),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Colors.deepPurple[500]),
                                        borderRadius:
                                            BorderRadius.circular(8))),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16),
                              child: TextField(
                                controller: passwordC,
                                cursorColor: Colors.indigo[100],
                                style: TextStyle(color: Colors.deepPurple[600]),
                                obscureText: true,
                                decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.visibility,
                                        color: Colors.indigo[100]),
                                    prefixIcon: Icon(Icons.security,
                                        color: Colors.deepPurple[600]),
                                    hintText: 'Your Password',
                                    hintStyle:
                                        TextStyle(color: Colors.indigo[100]),
                                    labelText: 'Password',
                                    labelStyle:
                                        TextStyle(color: Colors.indigo[100]),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.indigo[100]),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Colors.deepPurple[500]),
                                        borderRadius:
                                            BorderRadius.circular(8))),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 40, bottom: 70),
                              child: FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: Colors.indigo[100],
                                  splashColor: Colors.deepPurple[200],
                                  child: Icon(Icons.arrow_forward),
                                  onPressed: () {
                                    setState(() {
                                      (emailC.text == data.email &&
                                              passwordC.text == data.password)
                                          ? Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage()))
                                          : Flushbar(
                                              message:
                                                  "Maybe email or password don't pass",
                                              duration: Duration(seconds: 3),
                                              backgroundColor: Colors.pink[300],
                                              flushbarPosition:
                                                  FlushbarPosition.TOP,
                                            ).show(context);
                                    });
                                  }),
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

class ToSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => RegisterPage()));
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

// class Tes extends StatefulWidget {
//   @override
//   _TesState createState() => _TesState();
// }

// class _TesState extends State<Tes> {
//   final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

//   TextEditingController usernameC = TextEditingController();
//   TextEditingController passwordC = TextEditingController();

//   String username = "admin";
//   String password = "123";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         key: _key,
//         title: Text('Login'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextFormField(
//               controller: usernameC,
//               decoration: InputDecoration(hintText: 'username'),
//             ),
//           ),
//           SizedBox(height: 8),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextFormField(
//               controller: passwordC,
//               decoration: InputDecoration(hintText: 'password'),
//             ),
//           ),
//           SizedBox(height: 8),
//           RaisedButton(
//             child: Icon(Icons.arrow_forward),
//             onPressed: () {
//               setState(() {
//                 (usernameC.text == username && passwordC.text == password)
//                     ? Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => LoginPage()))
//                     : Flushbar(
//                         message: "Maybe email or password don't pass",
//                         duration: Duration(seconds: 3),
//                         backgroundColor: Colors.pink[300],
//                         flushbarPosition: FlushbarPosition.TOP,
//                       ).show(context);
//               });
//             },
//           )
//         ],
//       ),
//     );
//   }
// }

// _key.currentState.showSnackBar(SnackBar(
//                       content: Text('Maybe')));