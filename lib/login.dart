import 'package:firebase/Signup.dart';
import 'package:firebase/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emaillogincontroller = TextEditingController();
  TextEditingController passwordlogincontroller = TextEditingController();
  loginn() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emaillogincontroller.text,
               password: passwordlogincontroller.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              TextField(
                controller: emaillogincontroller,
              ),
              TextField(
                controller: passwordlogincontroller,
              ),
              ElevatedButton(
                  onPressed: () {
                    loginn();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Text("login")),
            ],
          ),
        ),
      ),
    );
  }
}
