import 'package:flutter/material.dart';
import 'package:login_page_flutter_ui/login_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  LoginPage data = LoginPage(email: 'admin', password: '123');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Colors.indigo,
            title: Text('Home Page'),
            centerTitle: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(10.0)
              )
            ),
          ),
          preferredSize: Size.fromHeight(70)),
          body: Center(
            child: Container(
              width: 250,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Email         : ${data.email}'),
                  Text('Password : ${data.password}')
                ],
              ),
            ),
          ),
    );
  }
}
