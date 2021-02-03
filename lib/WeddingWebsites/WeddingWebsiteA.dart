import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wonderful_wedding/LandingPageThreeDetails/Constants.dart';
import 'package:wonderful_wedding/LandingPageThreeDetails/Vendors.dart';
import 'package:wonderful_wedding/StandardGrid/StandardStaggeredGrid.dart';
import 'package:wonderful_wedding/copies/empty.dart';

class WeddingWebsiteA extends StatefulWidget {
  @override
  _WeddingWebsiteAState createState() => _WeddingWebsiteAState();
}

enum SingingCharacter { lafayette, jefferson }

class _WeddingWebsiteAState extends State<WeddingWebsiteA> {
  FocusNode myFocusNode;

  SingingCharacter _character = SingingCharacter.lafayette;

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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
          children: [
        Container(
          height: height,
          width: width,
          child: Stack(children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                // color: Colors.black.withOpacity(0.1),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1609926557156-e3099db1dc3b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
                    fit: BoxFit.cover),
                // backgroundBlendMode: BlendMode.darken,
              ),
            ),
            Container(
              height: height,
              width: width,
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
                    TextButton(
                        onPressed: () {},
                        child: Text("Our Story",
                            style: TextStyle(
                                color: Colors.white, fontSize: 21))),
                    SizedBox(
                      width: 50.0,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("Wedding Day",
                            style: TextStyle(
                                color: Colors.white, fontSize: 21))),
                    SizedBox(
                      width: 50.0,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("Registry",
                            style: TextStyle(
                                color: Colors.white, fontSize: 21))),
                    SizedBox(
                      width: 50.0,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("RSVP",
                            style: TextStyle(
                                color: Colors.white, fontSize: 21))),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                child: Text(
                  "Romeo and Juliet",
                  style: TextStyle(color: Colors.white, fontSize: 37),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 75.0),
              child: Center(
                child: Container(
                  child: Text(
                    "2021-01-01",
                    style: TextStyle(color: Colors.white, fontSize: 27),
                  ),
                ),
              ),
            ),
          ]),
        ),
        Container(
          color: Color(0xFFE1D8CD),
          // decoration: BoxDecoration(
          //   border: Border.all(color: Colors.black)
          // ),
          // width: width,
          margin: EdgeInsets.only(top: 40.0, bottom: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // width: width,
                child: Text(
                  "Our Story",
                  style: TextStyle(fontSize: 37),
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Container(
          color: Color(0xFFE1D8CD),
          // decoration: BoxDecoration(
          //     border: Border.all(color: Colors.black)
          // ),
          width: 800,
          height: 600,
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
            "Donec sit amet neque tincidunt, porttitor sem eu, consectetur leo. Nunc porttitor, felis quis "
            "faucibus pretium, est elit pretium orci, non luctus mauris ex eu mi. Vivamus molestie ex vel "
            "sodales consectetur. Donec et enim vel nisl finibus ultricies nec in nunc. Maecenas mollis libero"
            " justo, non ornare velit tristique at. Praesent ac magna in justo commodo facilisis interdum nec "
            "augue. Phasellus pellentesque lorem ex, id vulputate enim egestas in.",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          height: height,
          width: width,
          color: Color(0xFFE1D8CD),
          // margin: EdgeInsets.only(bottom: 20.0),
          // decoration: BoxDecoration(
          //     border: Border.all(color: Colors.black)
          // ),
          // height: 600,
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0, bottom: 50.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white, width: 3.0),
                        ),
                      ),
                      child: Text("Events", style: TextStyle(fontSize: 37)),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.only(top: 25.0, bottom: 25.0),
                            child: Text("Wedding Ceremony",
                                style: TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Text("5:00 PM, August 1, 2018",
                                style: TextStyle(fontSize: 21)),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Text("Golden Gate Park Rose Garden",
                                style: TextStyle(fontSize: 21)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.only(top: 25.0, bottom: 25.0),
                            child: Text("Reception",
                                style: TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Text("7:00 PM, August 1, 2018",
                                style: TextStyle(fontSize: 21)),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Text("Terra Gallery",
                                style: TextStyle(fontSize: 21)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 350,
                width: width,
                child: Image(
                  image: AssetImage("assets/images/flowerFour.png"),
                  fit: BoxFit.contain,
                ), //image: AssetImage("assets/images/flower.jpg"),
              )
            ],
          ),
        ),
        Container(
          // height: 200.0,
          height: height,
          // height: MediaQuery.of(context).size.height,
          width: width,
          // color: Color(0xFFfedbd0),
          decoration: BoxDecoration(
              color: Color(0xFFfedbd0).withOpacity(1),
              // borderRadius: BorderRadius.circular(16.0),
              border: Border.all(width: 11, color: Colors.white)),
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height : height,
                  child: StaggeredGridView.countBuilder(
                      itemCount: places.length,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6,
                      crossAxisCount: 4,
                      itemBuilder: (context, index) {
                        return PlaceContainer(
                          index: index,
                        );
                      },
                      staggeredTileBuilder: (index) {
                        // return StaggeredTile.count(2, index.isEven ? 3 : 2);
                        return StaggeredTile.count((index % 7 == 0) ? 2:1,(index % 7 == 0) ? 2:1);
                      }),
                )
              ]),
        ),

        Container(
          width: width,
          height: height,
          color: Colors.yellowAccent,
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0, bottom: 50.0),
                    child: Container(
                      child: Text("YOU'RE INVITED"),
                    ),
                  ),
                ),
              ),
              Container(
                width: width / 3,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
                    child: Container(
                      child: Text(
                        "This form will help us to pre-plan our wedding event with your presence please fill out this",
                        style: TextStyle(fontSize: 21),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // The first text field is focused on as soon as the app starts.
                    Container(
                      width: 500.0,
                      child: TextField(
                        // autofocus: true,
                        decoration: InputDecoration(hintText: "Full Name"),
                      ),
                    ),
                    Container(
                      width: 500.0,
                      child: TextField(
                        // focusNode: myFocusNode,
                        decoration:
                            InputDecoration(hintText: "E-Mail Address"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 500.0,
                      child: DropdownButton(
                          isExpanded: true,
                          value:
                              _selectedFruit, // A global variable used to keep track of the selection
                          items: _fruits.map((item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          onChanged: (selectedItem) => setState(
                                () => _selectedFruit = selectedItem,
                              )),
                    ),
                    Container(
                      width: 500.0,
                      child: TextFormField(
                        minLines: 2,
                        maxLines: 5,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          hintText: 'Message',
                          // hintStyle: TextStyle(
                          //     color: Colors.grey
                          // ),

                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          // ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // SizedBox(
              //   height: 50.0,
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  width: width,
                  margin: EdgeInsets.only(left: 150.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 250.0,
                        child: ListTile(
                          title: const Text('Yes, i will be there'),
                          leading: Radio(
                            value: SingingCharacter.lafayette,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Container(
                        width: 250.0,
                        child: ListTile(
                          title: const Text('Sorry, i can’t come'),
                          leading: Radio(
                            value: SingingCharacter.jefferson,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                width: width,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Center(
                    child: Container(
                      width: 200.0,
                      height: 50,
                      // margin: EdgeInsets.only(left: 150.0),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text("SEND",style: TextStyle(fontSize: 21),),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
class PlaceContainer extends StatelessWidget {
  final int index;

  PlaceContainer({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: kLightGrey,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(
              places[index].imgPath,
            ),
            fit: BoxFit.cover,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            places[index].name,
            style: kPlaceStyle,
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Function onPressed;
  final bool isSelected;

  CategoryButton({this.icon, this.color, this.onPressed, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      highlightElevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      fillColor: isSelected ? color.withAlpha(100) : kLightGrey,
      constraints: BoxConstraints.tightFor(
        width: 70,
        height: 75,
      ),
      child: Icon(
        icon,
        size: 30,
        color: color,
      ),
    );
  }
}