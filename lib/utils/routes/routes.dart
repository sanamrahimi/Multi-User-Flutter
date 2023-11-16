import 'package:flutter/material.dart';
import 'package:multi_role_app/screens/Signup_screen.dart';
import 'package:multi_role_app/screens/home_screen.dart';
import 'package:multi_role_app/screens/screen_two.dart';
import 'package:multi_role_app/screens/student_screen.dart';
import 'package:multi_role_app/screens/teacher_screen.dart';
import 'package:multi_role_app/utils/routes/routes_name.dart';
import '../../screens/splash_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());

      case RoutesName.signUp:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignUpScreen());

      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());

      case RoutesName.studentsScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const StudentScreen());

      case RoutesName.teacherScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const TeacherScreen());

      case RoutesName.screenTwo:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  ScreenTwo(data: settings.arguments as Map));

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defines'),
            ),
          );
        });
    }
  }
}
