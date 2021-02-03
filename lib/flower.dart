import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Flower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(top: 80.0),
      // height: 500,
      height: double.infinity,
      width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.pink[50],
      //     gradient: new LinearGradient(
      //       begin: Alignment.topLeft,
      //       end: Alignment.bottomRight,
      //       // colors: [
      //       //   Color.fromARGB(255, 255, 122, 122),
      //       //   Color.fromARGB(255, 255, 174, 187)
      //       // ],
      //     ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(21.0),
      child: Container(
        // height: 300.0,
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
                width: 1.5, color: Colors.white.withOpacity(0.9))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 300.0,
              width: 300.0,
              // color: Colors.white,
              decoration: BoxDecoration(
                  color: Colors.pink[100].withOpacity(1),
                // color: Color(0xFFee9ca7),
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                      width: 1.5, color: Colors.white)),
              child: Center(
                  child: Text(
                    "Kandy",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  )),
            ),
            Container(
              height: 300.0,
              width: 300.0,
              // color: Colors.white,
              decoration: BoxDecoration(
                  color: Color(0xFFee9ca7).withOpacity(1),
                  // color: Color(0xFFee9ca7),
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                      width: 1.5, color: Colors.white)),
              child: Center(
                  child: Text(
                    "Kandy",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  )),
            ),
            Container(
              height: 300.0,
              width: 300.0,
              // color: Colors.white,
              decoration: BoxDecoration(
                  color: Colors.pink[100].withOpacity(1),
                  // color: Color(0xFFee9ca7),
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                      width: 1.5, color: Colors.white)),
              child: Center(
                  child: Text(
                    "Kandy",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  )),
            ),
            Container(
              height: 300.0,
              width: 300.0,
              // color: Colors.white,
              decoration: BoxDecoration(
                  color: Colors.pink[100].withOpacity(1),
                  // color: Color(0xFFee9ca7),
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                      width: 1.5, color: Colors.white)),
              child: Center(
                  child: Text(
                    "Kandy",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
