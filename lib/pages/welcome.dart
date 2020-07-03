import 'package:chuuse/custom_widgets/Rounded_Button.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0x36, 0x4f, 0x6b, 1),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 60, right: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                    Container(
                      width: 180.0,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset('assets/images/logo.jpg'),
                    ),
                    Container(
                        child: SizedBox(
                      height: 250.0,
                    )),
                  ]),
                  Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'How do you want to proceed?',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  SizedBox(height: 100.0)
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 4,
                child: RoundedButton(
                  text: 'LOGIN',
                  press: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage())
                    );
                  },
                  color: Color.fromRGBO(0x25, 0xbd, 0xc9, 1),
                  fontsize: 20.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'OR',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              RoundedButton(
                text: 'CREATE AN ACCOUNT',
                fontsize: 20.0,
                color: Color.fromRGBO(0xe0, 0x1d, 0x65, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
