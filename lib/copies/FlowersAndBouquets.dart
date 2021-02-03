import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlowersAndBouquets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        // color: Colors.pink[50],
        child: Row(
          children: [
            Container(
            height: 330,
            // margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
                // color: Colors.white.withOpacity(0.2),
                color: Color(0xFFfedbd0),
                // borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0),topRight: Radius.circular(16.0)),
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                border: Border.all(
                    width: 1.5, color: Colors.white)
            ),
            child:
               Column(
                 children: [
                   Container(
                     padding: EdgeInsets.only(bottom: 20),
                     height: 200.0,
                     width: 300.0,
                     // color: Colors.white,
                     decoration: BoxDecoration(
                       border: Border(
                         bottom: BorderSide(
                           color: Colors.white,
                           width: 1.5,
                         ),
                       ),
                     ),
                     child: Center(
                         child: Text(
                       "Lassana Flora",
                       style: TextStyle(fontSize: 21, color: Color(0xFF442C2E)),
                     )),
                   ),
                   Container(
                     width: 300,
                     child: Column(
                       children: [
                         Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Icon(Icons.web_outlined,color: Color(0xFF442C2E)),
                             ),
                             Text(
                               'Lassanaflora.com',
                               style: TextStyle(color: Color(0xFF442c2e)),
                             ),
                           ],
                         ),
                         Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Icon(Icons.pin_drop_outlined,color: Color(0xFF442C2E)),
                             ),
                             Text(
                               '123/45, Colombo Road Colombo',
                               style: TextStyle(color: Color(0xFF442c2e)),
                             ),
                           ],
                         ),
                         Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Icon(Icons.phone,color: Color(0xFF442C2E)),
                             ),
                             Text(
                               '0711234567',
                               style: TextStyle(color: Color(0xFF442c2e)),
                             ),
                           ],
                         ),
                       ],
                     )
                   )
                 ],
               ),
            // child: ClipRRect(
            //   borderRadius: BorderRadius.circular(16.0),
            //   child: BackdropFilter(
            //     filter: ImageFilter.blur(
            //       sigmaX: 21.0,
            //       sigmaY: 21.0,
            //     ),
            //     child: Column(
            //       children: [
            //         Container(
            //           height: 300.0,
            //           width: 300.0,
            //           // color: Colors.white,
            //           decoration: BoxDecoration(
            //               color: Colors.white.withOpacity(0.2),
            //               borderRadius: BorderRadius.circular(16.0),
            //               border: Border.all(
            //                   width: 1.5, color: Colors.white.withOpacity(0.3))),
            //           child: Center(
            //               child: Text(
            //             "Kandy",
            //             style: TextStyle(fontSize: 21, color: Colors.white),
            //           )),
            //         ),
            //         Container(
            //           child: Text("dsadsa"),
            //         )
            //       ],
            //     ),
            //     // child: Container(
            //     //     height: 300.0,
            //     //     width: 300.0,
            //     //     // color: Colors.white,
            //     //     decoration: BoxDecoration(
            //     //         color: Colors.white.withOpacity(0.2),
            //     //         borderRadius: BorderRadius.circular(16.0),
            //     //         border: Border.all(
            //     //             width: 1.5, color: Colors.white.withOpacity(0.3))),
            //     //     child: Center(
            //     //         child: Text(
            //     //           "Kandy",
            //     //           style: TextStyle(fontSize: 21, color: Colors.white),
            //     //         )),
            //     //     ),
            //   ),
            // ),
          ),
          ]
        ),
      ),
    );
  }
}
