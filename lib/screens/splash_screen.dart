import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multi_role_app/screens/home_screen.dart';
import 'package:multi_role_app/screens/login_screen.dart';
import 'package:multi_role_app/screens/student_screen.dart';
import 'package:multi_role_app/screens/teacher_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();

  }

  void isLogin()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogin = sp.getBool('isLogin') ?? false;
    String userType = sp.getString('userType') ?? '';

    if(isLogin){

      if(userType == 'student'){
        Timer(Duration(seconds: 3), (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => StudentScreen()));
        });
      }else if(userType == 'teacher'){
        Timer(Duration(seconds: 3), (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => TeacherScreen()));
        });
      }else{
        Timer(Duration(seconds: 3), (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomeScreen()));
        });
      }
    }else{
      Timer(Duration(seconds: 3), (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => LoginScreen()));
      });
    }



  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

          ],
        ),
      ),
    );
  }
}
