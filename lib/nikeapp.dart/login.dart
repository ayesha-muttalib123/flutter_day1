import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Loginnike extends StatelessWidget {
  const Loginnike({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          height: 100,
          width: 100,
          child: Image.asset("assets/login.jpg"),
         ),
        ],
      ),
    );
  }
}
