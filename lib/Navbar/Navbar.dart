// import 'package:flutter/material.dart';
//
// class Navbar extends StatefulWidget {
//   @override
//   _NavbarState createState() => _NavbarState();
// }
//
// class _NavbarState extends State<Navbar> {
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context,constraints){
//         if(constraints.maxWidth>1200){
//           // return DesktopNavbar();
//           return MainView();
//         }
//         else if(constraints.maxWidth>800 && constraints.maxWidth<1200){
//           // return DesktopNavbar();
//           return MainView();
//         }
//         else{
//           return MainView();
//           // return DrawerMenu();
//         }
//       },
//     );
//   }
// }

// class DesktopNavbar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical:20.0,horizontal: 40.0),
//       child: Container(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Text(
//                 "Wonderful Wedding",style: TextStyle(fontSize: 37.0),
//             ),
//             Row(
//               children: <Widget>[
//                 Text("Home",style: TextStyle(fontSize: 21.0),),
//                 SizedBox(width: 30),
//                 Text("Wedding Planning",style: TextStyle(fontSize: 21.0),),
//                 SizedBox(width: 30),
//                 Text("Fashion & Beauty",style: TextStyle(fontSize: 21.0),),
//                 SizedBox(width: 30),
//                 Text("Travel",style: TextStyle(fontSize: 21.0),),
//                 SizedBox(width: 30),
//                 Text("About Us",style: TextStyle(fontSize: 21.0),),
//                 SizedBox(width: 30),
//                 Text("Contact Us",style: TextStyle(fontSize: 21.0),),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// class MobileNavbar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical:20.0,horizontal: 40.0),
//             child: Text(
//                 "Wonderful Wedding",style: TextStyle(fontSize: 37.0),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical:20.0,horizontal: 40.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text("Home",style: TextStyle(fontSize: 21.0),),
//                 SizedBox(width: 30),
//                 Text("Wedding Planning",style: TextStyle(fontSize: 21.0),),
//                 SizedBox(width: 30),
//                 Text("Fashion & Beauty",style: TextStyle(fontSize: 21.0),),
//                 SizedBox(width: 30),
//                 Text("Travel",style: TextStyle(fontSize: 21.0),),
//                 SizedBox(width: 30),
//                 Text("About Us",style: TextStyle(fontSize: 21.0),),
//                 SizedBox(width: 30),
//                 Text("Contact Us",style: TextStyle(fontSize: 21.0),),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class DrawerMenu extends StatefulWidget {
//   @override
//   _DrawerMenuState createState() => _DrawerMenuState();
// }
//
// class _DrawerMenuState extends State<DrawerMenu> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Wonderful Wedding"),
//         centerTitle: false,
//         actions: [
//           MaterialButton
//             (child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//               Text(
//                 "Home"
//               ),
//           ],),)
//         ],
//       ),
//     );
//   }
// }
//

// class MainView extends StatefulWidget {
//   @override
//   _MainViewState createState() => _MainViewState();
// }
//
// class _MainViewState extends State<MainView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Wonderful Wedding"),
//         centerTitle: false,
//         actions: [
//           MaterialButton(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Home"),
//                 Text("Home"),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
