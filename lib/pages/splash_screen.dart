import 'package:chuuse/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'loginpage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();

    _mockCheckForSession().then(
      (status){
        if(status){
          _navigateToHome();
        }else {
          _navigateToLogin();
        }
      }
    );
  }

  Future<bool> _mockCheckForSession() async{
    await Future.delayed(Duration(milliseconds: 5000),(){});
    return true;
 }

 void _navigateToHome(){
   Navigator.of(context).pushReplacement(
     MaterialPageRoute(builder: (BuildContext context)=> WelcomePage()
     )
   );
 }
  
  void _navigateToLogin(){
   Navigator.of(context).pushReplacement(
     MaterialPageRoute(builder: (BuildContext context)=> LoginPage()
     )
   );
 }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 350.0,
          height: 280.0,
          child: Image(
            image: AssetImage('assets/images/chuuselogo.jpg'),
          ),
        ),
      ),
    );
  }
}
