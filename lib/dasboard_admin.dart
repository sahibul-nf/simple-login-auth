import 'package:flutter/material.dart';

class DashboardAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Colors.indigo,
            title: Text('Dashboard'),
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
              // child: Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   // children: <Widget>[
              //   //   Text('Email         : ${data.email}'),
              //   //   Text('Password : ${data.password}')
              //   // ],
              // ),
            ),
          ),
    );
  }
}