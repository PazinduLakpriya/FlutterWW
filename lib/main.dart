import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wonderful_wedding/FrostedAppBar/FrostedAppBar.dart';
import 'package:wonderful_wedding/LandingPage/LandingPage.dart';
import 'package:wonderful_wedding/Navbar/Navbar.dart';

import 'FlowersAndBouquets/FlowersAndBouquets.dart';
import 'LandingPage/BottomPage.dart';
import 'LandingPage/LandingPageThree.dart';
import 'LandingPage/LandingPageTwo.dart';
import 'StandardGrid/StandardStaggeredGrid.dart';
import 'WeddingWebsites/WeddingWebsiteA.dart';
import 'copies/empty2.dart';
import 'flower.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wonderful Wedding',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        // primaryColor: Color(0xFFee9ca7),
        fontFamily: "Rubik",
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

int _index = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: (MediaQuery.of(context).size.width <= 800)
            ? Drawer(
                child: ListView(
                  children: [
                    MaterialButton(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Home"),
                          ),
                        ],
                      ),
                      onPressed: () {
                        setState(() {
                          _index = 0;
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                    MaterialButton(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Wedding Planning"),
                          ),
                        ],
                      ),
                      onPressed: () {
                        setState(() {
                          _index = 1;
                          Navigator.of(context).pop();
                        });                      },
                    ),
                    MaterialButton(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Fashion & Beauty"),
                          ),
                        ],
                      ),
                      onPressed: () {
                        setState(() {
                          _index = 2;
                          Navigator.of(context).pop();
                        });                      },
                    ),
                    MaterialButton(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Travel"),
                          ),
                        ],
                      ),
                      onPressed: () {
                        setState(() {
                          _index = 3;
                          Navigator.of(context).pop();
                        });                      },
                    ),
                  ],
                ),
              )
            : null,
        appBar: AppBar(
          title: Text("Wonderful Wedding",style: TextStyle(color: Colors.black),),
          centerTitle: false,
          // backgroundColor: Color(0xffffdde1),
          backgroundColor: Colors.white,
          actions: (MediaQuery.of(context).size.width > 800)
              ? [
                  MaterialButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Home"),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 2,
                            width: 70,
                            color:
                                _index == 0 ? Colors.white : Colors.transparent,
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        _index = 0;
                      });
                    },
                  ),
                  MaterialButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Wedding Planning"),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 2,
                            width: 70,
                            color:
                                _index == 1 ? Colors.white : Colors.transparent,
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        _index = 1;
                      });
                    },
                  ),
                  MaterialButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Fashion & Beauty"),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 2,
                            width: 70,
                            color:
                                _index == 2 ? Colors.white : Colors.transparent,
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        _index = 2;
                      });
                    },
                  ),
                  MaterialButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Travel"),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 2,
                            width: 70,
                            color:
                                _index == 3 ? Colors.white : Colors.transparent,
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        _index = 3;
                      });
                    },
                  ),
                ]
              : [],
        ),
        body:
        // Stack(
        //   fit: StackFit.expand,
        //     children: [
          Container(
            child: _index == 0
              ? Home(context)
              : (_index == 1
                  ? WeddingPlanning(context)
                  : (_index == 2 ? FashionAndBeauty(context) : Travel(context)))),
            // FrostedAppBar(
            //   blurStrengthX: 20,
            //   blurStrengthY: 20,
            //   title: Center(
            //     child: Text(
            //       'Frosted App Bar',
            //       style: TextStyle(fontSize: 30, color: Colors.white),
            //     ),
            //   ),
            // )
        //     ],
        // ),
        // Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //         begin: Alignment.topRight,
        //         end: Alignment.bottomLeft,
        //         colors: [
        //           Color.fromRGBO(128, 130, 132, 1.0),
        //           Color.fromRGBO(212, 216, 221, 1.0)
        //         ]),
        //     // color: Colors.grey
        //   ),
        //   child: SingleChildScrollView(
        //     child: Column(
        //       children: <Widget>[
        //         // Navbar(),
        //         Padding(
        //           padding: const EdgeInsets.symmetric(
        //               vertical: 20.0, horizontal: 40.0),
        //           child: LandingPage(),
        //         ),
        //         LandingPageTwo(),
        //         LandingPageThree(),
        //         FlowersAndBouquets(),
        //       ],
        //     ),
        //   ),
        // )
        );
  }
}

@override
Widget Home(BuildContext context) {
  return Container(
  color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Navbar(),
            LandingPage(),
            LandingPageTwo(),
            LandingPageThree(),
            BottomPage(),
          ],
        ),
      ),
    );
}

@override
Widget WeddingPlanning(BuildContext context) {
  return WeddingWebsiteA();
}

@override
Widget FashionAndBeauty(BuildContext context) {
  return FlowersAndBouquets();
}

@override
Widget Travel(BuildContext context) {
  // return Flower();
  return HomeScreen();
  return InstagramSearchGrid();

  // return Container(
  //   child: Center(
  //     child: Text("Travel"),
  //   ),
  // );
}
@override
Widget Photos(BuildContext context) {
  return StandardStaggeredGrid();
  // return Container(
  //   child: Center(
  //     child: Text("Travel"),
  //   ),
  // );
}
