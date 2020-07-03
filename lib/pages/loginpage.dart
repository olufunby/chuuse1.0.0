import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 0, right: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 180.0,
                      padding: EdgeInsets.only(top: 200, right: 0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          ),
                      child: Image.asset('assets/images/logo.jpg'),
                    ),
                  ],
                )
              ],)
            ],
          ),
        ),
      ),

    );
  }
}