import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mr_valentines_app/screens/1_start_screen.dart';
import 'package:mr_valentines_app/screens/3b_Choosing_screen.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const StartScreen(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const ListTile(
          trailing: Icon(
            Icons.clear_all,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Mr Valentines",
                style: TextStyle(
                    foreground: Paint()..shader = linearGradient2,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Trailer and Truck Services",
                style: TextStyle(
                    foreground: Paint()..shader = linearGradient1,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  Text(
                    "Windhoek, Namibia",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Image.asset(
                "assets/images/carmovingcolor.gif",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23.0),
                  gradient: const LinearGradient(colors: [
                    Color(0xFFF9A825),
                    Color(0xFFEF6C00),
                  ], begin: Alignment.centerRight, end: Alignment.centerLeft),
                ),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  elevation: 0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChoosingScreen()),
                    );
                  },
                  color: Colors.transparent,
                  child: const Text(
                    "Lets Get Started",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final Shader linearGradient1 = const LinearGradient(
  colors: <Color>[
    const Color(0xFF2508FF),
    const Color(0xFFEF6C00),
  ],
).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
final Shader linearGradient2 = const LinearGradient(
  colors: <Color>[Color(0xFF2508FF), Color(0xFFEF6C00)],
).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
