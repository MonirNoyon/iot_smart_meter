import 'package:flutter/material.dart';
import 'package:iot_meter/dashboard.dart';
import 'package:iot_meter/signin.dart';
import 'package:iot_meter/signup.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signin(),
      routes: {
        '/sign_up':(_)=>Signup(),
        '/sign_in':(_)=>Signin(),
        '/dashboard':(_)=>Dashboard(),
      },
    );
  }
}



