import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/routes/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();
  }

  void isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogin = sp.getBool('isLogin') ?? false;
    String userType = sp.getString('userType') ?? '';

    if (isLogin) {
      if (userType == 'student') {
        Timer(const Duration(seconds: 3), () {
          Navigator.pushNamed(context, RoutesName.studentsScreen);
        });
      } else if (userType == 'teacher') {
        Timer(const Duration(seconds: 3), () {
          Navigator.pushNamed(context, RoutesName.teacherScreen);
        });
      } else {
        Timer(const Duration(seconds: 3), () {
          Navigator.pushNamed(context, RoutesName.home);
        });
      }
    } else {
      Timer(const Duration(seconds: 3), () {
        Navigator.pushNamed(context, RoutesName.signUp);
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
          children: const [
            Center(
              child: Text(
                'Splash Screen',
                style: TextStyle(fontSize: 30),
              ),
            ),
            // Image.asset(
            //   'assets/flutter_image.png',
            //   width: double.infinity,
            //   fit: BoxFit.fitHeight,
            // ),
          ],
        ),
      ),
    );
  }
}
