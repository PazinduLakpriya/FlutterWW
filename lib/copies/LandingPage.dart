import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {

  List<Widget> pageChildren(double width){
    return <Widget>[
      Container(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Ayubowan',style: TextStyle(fontSize: 77),),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical:40.0),
        // padding: EdgeInsets.only(top: 20),
        child: Center(
          child: Container(
            padding: EdgeInsets.only(top: 50),
            height: 500,
            width: width,
            child: Stack(
              children: [
                Column(
                  children: [
                    // child: Container(
                    ClipPath(
                      child: Container(
                        margin: EdgeInsets.only(top: 50),
                        // child: Image.asset("assets/images/flower.jpg",
                        // child: Image.asset("assets/images/girl.png",
                        width: width,
                        height: 300,
                        // ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.orange, Colors.pinkAccent],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            )
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Color(0xff2c3e50).withOpacity(0.5),
                          //     spreadRadius: 3,
                          //     blurRadius: 7,
                          //     offset: Offset(0, 3), // changes position of shadow
                          //   ),
                          // ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                    top:-50,
                    left: 50,
                    height: 500,
                    width: 500,
                    child: Image.asset("assets/images/girlTwo.png")
                ),
              ],
            ),
          ),
        ),
      )
    ];
  }


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth > 800){
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: pageChildren(constraints.biggest.width/2),
          );
        }
        else{
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}