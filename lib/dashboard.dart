import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(215, 209, 209, 100),
      appBar: AppBar(
        leading: Icon(
          Icons.drag_indicator_rounded,
          color: Colors.black54,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            padding: EdgeInsets.only(left: 8, right: 8),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                  backgroundColor: Colors.white,
                ),
                Text(" Md. Azharul Islam")
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.52,
                  width: size.width * 0.9,
                  child: Card(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "Realtime Data",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          trailing: Icon(
                            Icons.info,
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          height: size.height * 0.2,
                          width: size.width * 0.8,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.lightBlueAccent, width: 1)),
                          child: Center(
                            child: Text("Graph here"),
                          ),
                        ),
                        Container(
                          width: size.width * 0.8,
                          padding: EdgeInsets.only(top: 8, bottom: 5),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: size.width * 0.25,
                                    height: size.height * 0.1,
                                    child: Card(
                                      elevation: 5,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text("Voltage"),
                                          Text(
                                            "230v",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.25,
                                    height: size.height * 0.1,
                                    child: Card(
                                      elevation: 5,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text("Frequency"),
                                          Text(
                                            "60 Hz",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.25,
                                    height: size.height * 0.1,
                                    child: Card(
                                      elevation: 5,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text("Current"),
                                          Text(
                                            "1.57 A",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: size.width * 0.25,
                                    height: size.height * 0.1,
                                    child: Card(
                                      elevation: 5,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text("Power factor"),
                                          Text(
                                            "0.72",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.25,
                                    height: size.height * 0.1,
                                    child: Card(
                                      elevation: 5,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text("Active Energy"),
                                          Text(
                                            "130 W",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.25,
                                    height: size.height * 0.1,
                                    child: Card(
                                      elevation: 5,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text("Over Power"),
                                          Text(
                                            "No",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(

                  width: size.width * 0.9,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ListTile(
                          title: Text(
                            "Daily Usage",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          trailing: Icon(
                            Icons.info,
                            color: Colors.blue,
                          ),
                        ),
                        ListTile(
                          title: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "2.35 ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700)),
                              TextSpan(
                                  text: "kw/h",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  )),
                            ]),
                          ),
                          trailing: Container(
                            child: Text("graph"),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.info_outline),
                          title: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "7 % less usage then last week",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                  )),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.9,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ListTile(
                          title: Text(
                            "Monthly Usage",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          trailing: Icon(
                            Icons.info,
                            color: Colors.blue,
                          ),
                        ),
                        ListTile(
                          title: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "372 ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700)),
                              TextSpan(
                                  text: "Unit",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  )),
                            ]),
                          ),
                          trailing: Container(
                            child: Text("graph"),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.info_outline),
                          title: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: " 17 % more usage then last month",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                  )),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
