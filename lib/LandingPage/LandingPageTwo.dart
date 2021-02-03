import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scrSize = MediaQuery.of(context).size;
    return Container(
      height: 500,
      width: scrSize.width,
      // width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
        //   image: AssetImage("assets/images/flower.jpg"),
          image: NetworkImage("https://images.unsplash.com/photo-1517722014278-c256a91a6fba?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
            fit: BoxFit.cover,
        )
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 7.0,
                sigmaY: 7.0,
              ),
              child: Container(
                height: 300.0,
                width: 300.0,
                // color: Colors.white,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                        width: 1.5, color: Colors.white)),
                child: Center(
                    child: Text(
                  "Kandian",
                  style: TextStyle(fontSize: 21, color: Colors.white),
                )),
              ),
            ),
          ),
        ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 7.0,
                    sigmaY: 7.0,
                  ),
                  child: Container(
                    height: 300.0,
                    width: 300.0,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                            width: 1.5, color: Colors.white)),
                    child: Center(
                        child: Text(
                          "Western",
                          style: TextStyle(fontSize: 21, color: Colors.white),
                        )),
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 7.0,
                    sigmaY: 7.0,
                  ),
                  child: Container(
                    height: 300.0,
                    width: 300.0,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                            width: 1.5, color: Colors.white)),
                    child: Center(
                        child: Text(
                          "Indian",
                          style: TextStyle(fontSize: 21, color: Colors.white),
                        )),
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 7.0,
                    sigmaY: 7.0,
                  ),
                  child: Container(
                    height: 300.0,
                    width: 300.0,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                            width: 1.5, color: Colors.white)),
                    child: Center(
                        child: Text(
                          "Hindu",
                          style: TextStyle(fontSize: 21, color: Colors.white),
                        )),
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 7.0,
                    sigmaY: 7.0,
                  ),
                  child: Container(
                    height: 300.0,
                    width: 300.0,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                            width: 1.5, color: Colors.white)),
                    child: Center(
                        child: Text(
                          "Royal",
                          style: TextStyle(fontSize: 21, color: Colors.white),
                        )),
                  ),
                ),
              ),
            ),
      ]),
    );
  }
}
