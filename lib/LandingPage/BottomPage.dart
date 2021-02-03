import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      //#B57BA8 0xFF82E6F8
      color: Color(0xFFB57BA8),
      padding: EdgeInsets.only(left: 25.0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: TextButton(
                child: Text("Privacy Policy",style: TextStyle(color: Colors.white),),
              ),
            ),
            SizedBox(
              width: 25.0,
            ),
            Container(
              child: TextButton(
                child: Text("Terms of Use",style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 50,
                  height: 50,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(16.0),
                  //     border: Border.all(width: 1, color: Colors.white)),
                // color: Colors.black,
                child:IconButton(
                    icon: FaIcon(FontAwesomeIcons.facebook,color: Colors.white,size: 27,), onPressed: (){
                  print("Pressed");
                }
                )
              ),
              // SizedBox(
              //   width: 20.0,
              // ),
              Container(
                  width: 50,
                  height: 50,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(16.0),
                  //     border: Border.all(width: 1, color: Colors.white)),
                  // color: Colors.black,
                  child:IconButton(
                      icon: FaIcon(FontAwesomeIcons.instagram,color: Colors.white,size: 27,), onPressed: (){
                    print("Pressed");
                  }
                  )
              ),
              SizedBox(
                width: 50.0,
              )
            ],
          )
        ]
      ),
    );
  }
}
