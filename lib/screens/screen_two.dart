
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
 dynamic data;
   ScreenTwo({Key? key, required this.data}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data['name']),
      ),
    );
  }
}
