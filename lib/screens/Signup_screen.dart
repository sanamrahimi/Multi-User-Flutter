import 'package:flutter/material.dart';
import 'package:multi_role_app/utils/components/RoundButton.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/routes/routes_name.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Age',
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            RoundButton(
                height: 40,
                buttonColor: Colors.blue,
                title: 'Sign Up',

                onPress: () async {
                  SharedPreferences sp = await SharedPreferences.getInstance();
                  sp.setString('email', emailController.text.toString());
                  sp.setString('age', ageController.text.toString());
                  sp.setBool('isLogin', true);

                  // admin, student, teacher
                  // sp.setString('userType', 'student');

                  if (sp.getString('userType') == 'teacher') {
                    Navigator.pushNamed(context, RoutesName.teacherScreen);
                  } else if (sp.getString('userType') == 'student') {
                    Navigator.pushNamed(context, RoutesName.studentsScreen);
                  } else {
                    Navigator.pushNamed(context, RoutesName.home);
                  }
            }),
          ],
        ),
      ),
    );
  }
}
