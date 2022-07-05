import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Added extends StatefulWidget {
  const Added({Key? key}) : super(key: key);

  @override
  State<Added> createState() => _AddedState();
}

class _AddedState extends State<Added> {




  @override
  Widget build(BuildContext context) {


       CollectionReference users = FirebaseFirestore.instance.collection('users');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
            'full_name': "fullName", // John Doe
            'company': "company", // Stokes and Sons
            'age': "age" // 42
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return TextButton(
      onPressed: addUser,
      child: Text(
        "Add  to firebase",
      ),
    );
  }
}
    
 