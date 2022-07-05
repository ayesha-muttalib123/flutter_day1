import 'package:firebase/login.dart';
import 'package:firebase/nikeapp.dart/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Loginnike(),
      ),
    );
  }
}





















// import 'package:firebase/Signup.dart';
// import 'package:firebase/added..dart';

// import 'package:firebase_core/firebase_core.dart';

// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// import 'package:cloud_firestore_example/firebase_config.dart';
// import 'package:firebase/added..dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// /// Requires that a Firestore emulator is running locally.
// /// See https://firebase.flutter.dev/docs/firestore/usage#emulator-usage
// bool shouldUseFirestoreEmulator = false;

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseConfig.platformOptions);

//   if (shouldUseFirestoreEmulator) {
//     FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
//   }
//   runApp(Added());
// }
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           scaffoldBackgroundColor: Colors.white,
//         ),
//         home: Added());
//   }
// }
