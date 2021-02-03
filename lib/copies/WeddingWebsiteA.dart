import 'dart:ui';

import 'package:flutter/material.dart';

class WeddingWebsiteA extends StatefulWidget {
  @override
  _WeddingWebsiteAState createState() => _WeddingWebsiteAState();
}

class _WeddingWebsiteAState extends State<WeddingWebsiteA> {

  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();

    super.dispose();
  }

  static const _fruits = [
    'Apple',
    'Orange',
    'Lemon',
    'Strawberry',
    'Peach',
    'Cherry',
    'Watermelon',
  ];

  String _selectedFruit = "Apple";


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 150),
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  // color: Colors.black.withOpacity(0.1),
                    image: DecorationImage(
                        image: NetworkImage("https://images.unsplash.com/photo-1610173827002-62c0f1f05d04?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
                        fit: BoxFit.cover),
                // backgroundBlendMode: BlendMode.darken,
                ),
              ),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.grey.withOpacity(0.0),
                            Colors.black,
                          ],
                          stops: [
                            0.0,
                            1.0
                          ])),
                ),
                Container(
                  // color: Colors.black.withOpacity(0.3),
                  height: 100.0,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Our Story",style: TextStyle(color: Colors.white,fontSize: 21))),
                      SizedBox(
                        width: 50.0,
                      ),
                      TextButton(onPressed: (){}, child: Text("Wedding Day",style: TextStyle(color: Colors.white,fontSize: 21))),
                      SizedBox(
                        width: 50.0,
                      ),
                      TextButton(onPressed: (){}, child: Text("Registry",style: TextStyle(color: Colors.white,fontSize: 21))),
                      SizedBox(
                        width: 50.0,
                      ),
                      TextButton(onPressed: (){}, child: Text("RSVP",style: TextStyle(color: Colors.white,fontSize: 21))),
                    ],
                      ),
                  ),
                ),
                Center(
                  child: Container(
                    child: Text("Romeo and Juliet",style: TextStyle(color: Colors.white,fontSize: 37),),
                  ),
                ),
                Container(
                  color: Colors.orange,
                  child: Column(
                    children: [
                      TextButton(onPressed: (){}, child: Text("Our Story",style: TextStyle(color: Colors.white,fontSize: 21))),
                      SizedBox(
                        width: 50.0,
                      ),
                      TextButton(onPressed: (){}, child: Text("Wedding Day",style: TextStyle(color: Colors.white,fontSize: 21))),
                      SizedBox(
                        width: 50.0,
                      ),
                      TextButton(onPressed: (){}, child: Text("Registry",style: TextStyle(color: Colors.white,fontSize: 21))),
                      SizedBox(
                        width: 50.0,
                      ),
                      TextButton(onPressed: (){}, child: Text("RSVP",style: TextStyle(color: Colors.white,fontSize: 21))),
                    ],
                  ),
                ),
              ]
            ),
          ),
          Container(
            child: Container(
              // width: 500.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    // The first text field is focused on as soon as the app starts.
                    TextField(
                      // autofocus: true,
                      decoration:
                      InputDecoration(hintText: "First Name"),
                    ),
                    // The second text field is focused on when a user taps the
                    // FloatingActionButton.
                    TextField(
                      // focusNode: myFocusNode,
                      decoration:
                      InputDecoration(hintText: "First Name"),
                    ),
                    TextFormField(
                      // initialValue: 'Input text',
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        // errorText: 'Error message',
                        border: OutlineInputBorder(),
                        // suffixIcon: Icon(
                        //   Icons.error,
                        // ),
                      ),
                    ),
                    InputDecorator(
                      decoration: InputDecoration(
                        labelText: 'Fruit',
                        labelStyle: Theme.of(context)
                            .primaryTextTheme
                            .caption
                            .copyWith(color: Colors.black),
                        border: const OutlineInputBorder(),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          isExpanded: true,
                          isDense:
                          true, // Reduces the dropdowns height by +/- 50%
                          icon: Icon(Icons.keyboard_arrow_down),
                          value: _selectedFruit,
                          items: _fruits.map((item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          onChanged: (selectedItem) => setState(
                                () => _selectedFruit = selectedItem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// Container(
//   child: Row(
//       children: [
//     TextFormField(
//       // initialValue: 'Input text',
//       decoration: InputDecoration(
//         labelText: 'First Name',
//         // errorText: 'Error message',
//         border: OutlineInputBorder(),
//         // suffixIcon: Icon(
//         //   Icons.error,
//         // ),
//       ),
//     ),
//     InputDecorator(
//       decoration: InputDecoration(
//         labelText: 'Fruit',
//         labelStyle: Theme.of(context)
//             .primaryTextTheme
//             .caption
//             .copyWith(color: Colors.black),
//         border: const OutlineInputBorder(),
//       ),
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton(
//           isExpanded: true,
//           isDense:
//               true, // Reduces the dropdowns height by +/- 50%
//           icon: Icon(Icons.keyboard_arrow_down),
//           value: _selectedFruit,
//           items: _fruits.map((item) {
//             return DropdownMenuItem(
//               value: item,
//               child: Text(item),
//             );
//           }).toList(),
//           onChanged: (selectedItem) => setState(
//             () => _selectedFruit = selectedItem,
//           ),
//         ),
//       ),
//     ),
//   ]),
// ),