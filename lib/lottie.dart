import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix/homepage.dart';

class LottieScreen extends StatefulWidget {
  const LottieScreen({Key? key}) : super(key: key);

  @override
  _LottieScreenState createState() => _LottieScreenState();
}

class _LottieScreenState extends State<LottieScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.black,
        height: double.infinity,
        child: Center(
          child: Image.asset("assets/netflix.gif"),
        ),
      )),
    );
  }
}
