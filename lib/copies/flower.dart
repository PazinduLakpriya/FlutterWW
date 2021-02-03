import 'dart:ui';

import 'package:flutter/material.dart';
class Flower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 80.0),
      // height: 500,
      height: double.infinity,
      width: double.infinity,
    decoration: BoxDecoration(
      // color: Colors.redAccent,
          gradient: new LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 255, 122, 122),
              Color.fromARGB(255, 255, 174, 187)
            ],
          ),
      // image: DecorationImage(
      //   // image: AssetImage("assets/images/flower.jpg"),
      //   image: NetworkImage("https://images.unsplash.com/photo-1568926384939-c0ab724a86b1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1151&q=80"),
      //   fit: BoxFit.cover,
      // )
    ),
    child: Padding(
      padding: const EdgeInsets.all(21.0),
      child: Center(
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 11.0,
                  sigmaY: 11.0,
                ),
                child: Container(
                  // height: 300.0,
                  height: double.infinity,
                  width: double.infinity,
                  // color: Colors.white,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                          width: 1.5, color: Colors.white.withOpacity(0.9))),
                  // child: Center(
                  //     child: Text(
                  //       "Kandy",
                  //       style: TextStyle(fontSize: 21, color: Colors.white),
                  //     )),
                  child: Center(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 11.0,
                            sigmaY: 11.0,
                          ),
                          child: Container(
                            height: 300.0,
                            width: 300.0,
                            // color: Colors.white,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.3),
                              // color: Colors.grey,
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(
                                    width: 1.5, color: Colors.white.withOpacity(0.9))),
                            child: Center(
                                child: Text(
                                  "Kandy",
                                  style: TextStyle(fontSize: 21, color: Colors.black),
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),
    ),
    );
  }
}
