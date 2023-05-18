import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService {
  final auth = FirebaseAuth.instance;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void EmployeeLogin() async {
    try {
      await auth
          .signInWithEmailAndPassword(
              email: email.text, password: password.text)
          .then((value) => {print("User is Logged In")});
    } catch (e) {
      print(e);
    }

    void EmployeeRegister() async {
      try {
        await auth
            .createUserWithEmailAndPassword(
                email: email.text, password: password.text)
            .then((value) => {print("User is Registered")});
      } catch (e) {
        print(e);
      }
    }
  }

  void SupervisorLogin() async {
    try {
      await auth
          .signInWithEmailAndPassword(
              email: email.text, password: password.text)
          .then((value) => {print("User is Logged In")});
    } catch (e) {
      print(e);
    }

    void SupervisorRegister() async {
      try {
        await auth
            .createUserWithEmailAndPassword(
                email: email.text, password: password.text)
            .then((value) => {print("User is Registered")});
      } catch (e) {
        print(e);
      }
    }
  }
}
