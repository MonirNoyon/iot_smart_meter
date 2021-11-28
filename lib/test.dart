import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {


  final dbref = FirebaseDatabase.instance.reference();
  List collection = [];
  final valo = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 150,

              child: FirebaseAnimatedList(
                query: dbref,
                itemBuilder: (BuildContext context, DataSnapshot snapshot,Animation<double> animation,
                    index)  {

                  return Center(child: Text(snapshot.toString()));
                }
              ),
            ),
          ],
        ),
      ),
    );
  }



}
