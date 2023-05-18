import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mr_valentines_app/screens/2_getting_started_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 12),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const MyPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFFFFFF),
              Color(0xffffffff),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/IMG_1403.jpg',
                  height: 300.0,
                  width: 300.0,
                ),
                const Text(
                  "A way to keep Track of all your Daily Services \n Right at your fingertips",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    height: 2.5,
                  ),
                ),
              ],
            ),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
