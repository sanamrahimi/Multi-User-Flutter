class RoutesName {
  static const String splash = 'splash_Screen';

  static const String home = 'home_screen';

  static const String signUp = 'signup_screen';

  static const String studentsScreen = 'student_screen';

  static const String teacherScreen = 'teacher_screen';

  static const String screenTwo = 'screen_two';
}

// in main.dart
// initialRoute: RoutesName.splash,
// onGenerateRoute: Routes.generateRoute,

// for navigating
//Navigator.pushNamed(context, RoutesName.home);


//passing data between screens
/*
* screen2 --->  dynamic data;  --- required this.data
* routes --->  case RoutesName.screenTwo:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  ScreenTwo(data: settings.arguments as Map));
*
* home --->   Navigator.pushNamed(context, RoutesName.screenTwo,
                      arguments: {
                        'name': 'sanam'
                      }
                      );

*
* screen2 --> Text(widget.data['name']),
*
* */