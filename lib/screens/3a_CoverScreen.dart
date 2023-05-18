import 'dart:async';

import 'package:flutter/material.dart';
import '3b_Choosing_screen.dart';

class CoverScreen extends StatefulWidget {
  const CoverScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<CoverScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const ChoosingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xFFEF6C00),
                gradient: LinearGradient(
                    colors: [(Color(0xFFF9A825)), (Color(0xFFEF6C00))],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
        ],
      ),
    );
  }
}
