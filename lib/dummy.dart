// import 'package:flutter/material.dart';
// import 'package:instagram/activity.dart';
// import 'package:instagram/explorer.dart';
// import 'package:instagram/home.dart';
// import 'package:instagram/post.dart';
// import 'package:instagram/insta__icons_icons.dart';
// import 'package:instagram/main.dart';
// import 'package:instagram/user_profile.dart';
//
// class BottomBar extends StatefulWidget {
//   const BottomBar({Key? key}) : super(key: key);
//
//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }
//
// class _BottomBarState extends State<BottomBar> {
//   int index = 0;
//   final screens = [
//     Center(child: Text('Home', style: TextStyle(fontSize: 30))),
//     Center(child: Text('Explorer', style: TextStyle(fontSize: 30))),
//     Center(child: Text('IGTV', style: TextStyle(fontSize: 30))),
//     Center(child: Text('Actiity', style: TextStyle(fontSize: 30))),
//     Center(child: Text('User Profile', style: TextStyle(fontSize: 30))),
//   ];
//
//   @override
//   Widget build(BuildContext context) => Scaffold(
//
//     body: screens[index],
//
//     bottomNavigationBar: NavigationBarTheme(
//       data: NavigationBarThemeData(
//           indicatorColor: Colors.transparent,
//           backgroundColor: Colors.white
//       ),
//
//       child: NavigationBar(
//         height: 50,
//         selectedIndex: index,
//         onDestinationSelected: (index) =>
//             setState(() => this.index = index),
//
//         destinations: const [
//           SizedBox(
//             height: 25,
//             child: NavigationDestination(
//                 icon: Icon(Icons.home_outlined, size: 40),
//                 selectedIcon: Icon(Icons.home, size: 40,),
//                 label: ''
//             ),
//           ),
//
//           SizedBox(
//             height: 15,
//             child: NavigationDestination(
//                 icon: Icon(Icons.search_rounded, size: 35),
//                 label: ''
//             ),
//           ),
//
//           SizedBox(
//             height: 15,
//             child: NavigationDestination(
//                 icon: Icon(Icons.ondemand_video_outlined, size: 30),
//                 label: ''
//             ),
//           ),
//
//           SizedBox(
//             height: 15,
//             child: NavigationDestination(
//                 icon: Icon(Insta_Icons.heart_empty, size: 30),
//                 selectedIcon: Icon(Insta_Icons.heart, size: 30,),
//                 label: ''
//             ),
//           ),
//
//           SizedBox(
//             height: 25,
//             child: NavigationDestination(
//                 icon: Icon( Icons.account_circle_outlined, size: 40, ),
//                 label: ''
//             ),
//           ),
//         ],
//       ),),
//
//   );
//
// }
