import 'package:chuuse/custom_widgets/Rounded_Button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left:60,right:60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: 250.0,),
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
                    style: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                  SizedBox(height:100.0)
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 4,
                child: RoundedButton(
                  text: 'LOGIN',
                  color: Colors.teal,
                  fontsize: 20.0,
                ),
              ),
              SizedBox(height:10.0),
              Text('OR',style: TextStyle(fontSize: 20,color: Colors.white),),
              SizedBox(height:10.0),
              RoundedButton(
                text: 'CREATE AN ACCOUNT',
                fontsize: 20.0,
                color: Colors.pinkAccent[400],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
