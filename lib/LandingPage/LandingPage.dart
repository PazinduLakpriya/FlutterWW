import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        height: 700,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFee9ca7), Color(0xFFee9ca7)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Ayubowan!',
                      style: TextStyle(
                          fontSize: 77,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Text(
                        'Make Your Wedding Day Special',
                        style:
                            TextStyle(fontSize: 37, color: Color(0xFFFFFFFF)),
                      ),
                    ]),
                  ),
                  Container(
                    height: 50.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                        // color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(width: 1.5, color: Colors.white)),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Kiss Now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 50),
              child: Image.asset(
                "assets/images/kiss.jpg",
                fit: BoxFit.cover,
                // child: Image.asset("assets/images/girl.png",
                width: width,
                height: 700,
                colorBlendMode: BlendMode.darken,
              ),
            ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
