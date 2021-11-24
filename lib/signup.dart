import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaleFactor = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SizedBox(
          height: size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.home,size: 50,),
                Text("iot smart meter".toUpperCase(),style: TextStyle(
                  fontSize: 25,
                  //style your text
                    color: Colors.black
                ),),
                Container(
                  height: size.height*0.6,
                  width: size.width*0.9,
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8,right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Create an account",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: scaleFactor*23,
                            ),),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Email",
                                hintStyle: TextStyle(
                                  //style your hint if needed
                                )
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Password",
                                suffix: Text("show",style: TextStyle(
                                    color: Colors.blue
                                ),),
                                hintStyle: TextStyle(
                                  //style your hint if needed
                                )
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Confirm password",
                                suffix: Text("show",style: TextStyle(
                                    color: Colors.blue
                                ),),
                                hintStyle: TextStyle(
                                  //style your hint if needed
                                )
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.blue,
                                      Colors.blueAccent,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight
                                )
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                customBorder: StadiumBorder(),
                                splashColor: Colors.white54,
                                child: Container(
                                  width: size.width*0.65,
                                  height: 50,
                                  child: Center(
                                    child: Text("Agree & Create",style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500
                                    ),),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text("Or",style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontSize: scaleFactor*23,
                          ),),
                          Container(

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                  color: Colors.blue,
                                  width: 1,
                                ),
                                color: Colors.transparent
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: (){},
                                customBorder: StadiumBorder(),
                                splashColor: Colors.white54,
                                child: Container(
                                  width: size.width*0.65,
                                  height: 50,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.email_outlined),//use asset.image() here
                                      Text("Join with Google")
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                RichText(
                  text:  TextSpan(
                      children: [
                        TextSpan(text: "Already have an account ?",style: TextStyle(
                            color: Colors.black54
                        )),
                        TextSpan(text: " Sign in",
                            recognizer: TapGestureRecognizer()..onTap=(){
                                  Navigator.pop(context);
                            },
                            style: TextStyle(
                                color: Colors.blue
                            )),
                      ]
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
