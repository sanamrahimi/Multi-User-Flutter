import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/routes/routes_name.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({Key? key}) : super(key: key);

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  String email = '', age = '', type = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString('email') ?? '';
    age = sp.getString('age') ?? '';
    type = sp.getString('userType') ?? '';

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students Screen'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('Email'),
                    Text(email.toString()),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('Age'),
                    Text(age.toString()),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('User Type'),
                    Text(type.toString()),
                  ],
                ),
                InkWell(
                  onTap: () async {
                    SharedPreferences sp =
                        await SharedPreferences.getInstance();
                    sp.clear();
                    Navigator.pushNamed(context, RoutesName.signUp);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      color: Colors.blue,
                      child: const Center(
                          child: Text(
                        'logOut',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),

                InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, RoutesName.screenTwo,
                      arguments: {
                        'title': 'data passed'
                      }
                      );
                    },
                    child: Text('screen two')),

              ])),
    );
  }
}
