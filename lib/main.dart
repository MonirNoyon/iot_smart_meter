import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:iot_meter/dashboard.dart';
import 'package:iot_meter/signin.dart';
import 'package:iot_meter/signup.dart';
import 'package:iot_meter/test.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _auth!=null ? Dashboard():Signin(),
      routes: {
        '/sign_up':(_)=>Signup(),
        '/sign_in':(_)=>Signin(),
        '/dashboard':(_)=>Dashboard(),
        '/test':(_)=>Test(),
      },
    );
  }
}



