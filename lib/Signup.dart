import 'package:firebase/homepage.dart';
import 'package:firebase/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  Future anon() async {
    try {
      final userCredential = await FirebaseAuth.instance.signInAnonymously();
      print("Signed in with temporary account.");
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "operation-not-allowed":
          print("Anonymous auth hasn't been enabled for this project.");
          break;
        default:
          print("Unknown error.");
      }
    }
  }

  Future loginn() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
           .signInWithEmailAndPassword(
              email: emailcontroller.text, password: passwordcontroller.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Navigator.pop(context, Signup());
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("No user found for that email."),
              );
            });
      } else if (e.code == 'wrong-password') {
        Navigator.pop(context, Signup());

        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Wrong password provided for that user.."),
              );
            });

        print('Wrong password provided for that user.');
      }
    }
  }

  Future Signup() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("The password provided is too weak."),
              );
            });

        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("The account already exists for that email"),
              );
            });
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Color.fromARGB(255, 105, 42, 19),
        title: Text(" Sign in to brew  crew"),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              TextField(
                controller: emailcontroller,
              ),
              TextField(
                controller: passwordcontroller,
              ),
              ElevatedButton(
                  onPressed: () {
                    Signup();

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text("Signup")),
              ElevatedButton(
                  onPressed: () {
                    loginn();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Text("login")),
              ElevatedButton(
                  onPressed: () {
                    anon();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Text("Login Anonymously"))
            ],
          ),
        ),
      ),
    );
  }
}
