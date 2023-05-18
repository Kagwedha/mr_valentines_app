import 'package:flutter/material.dart';
import 'package:mr_valentines_app/screens/5_Service.dart';
import 'package:mr_valentines_app/screens/helper.dart';
import 'package:mr_valentines_app/screens/SupervisorRegister.dart';

class SupervisorLogin extends StatefulWidget {
  const SupervisorLogin({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SupervisorLogin> {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Color(0xFFF9A825),
                gradient: LinearGradient(
                    colors: [(Color(0xFFEF6C00)), (Color(0xFFF9A825))],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "SUPERVISOR LOGIN",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                controller: authService.email,
                cursorColor: const Color(0xffF5591F),
                decoration: const InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Color(0xFFEF6C00),
                    ),
                    hintText: "Enter Username",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                controller: authService.password,
                obscureText: true,
                cursorColor: const Color(0xffF5591F),
                decoration: const InputDecoration(
                    icon: Icon(
                      Icons.vpn_key,
                      color: Color(0xFFF9A825),
                    ),
                    hintText: "Enter Password",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, right: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: const Text("Forget Password"),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SupervisorRegister()))
                },
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ServicePage())),
              },
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
                padding: const EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [(Color(0xFFF9A825)), (Color(0xFFEF6C00))],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE))
                  ],
                ),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't Have Account? "),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SupervisorRegister()))
                    },
                    child: const Text(
                      "Register Now",
                      style: TextStyle(color: Color(0xFFF9A825)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, right: 20),
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      child: const Text("."),
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SupervisorRegister()))
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
