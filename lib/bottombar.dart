import 'package:flutter/material.dart';
import 'package:instagram/activity.dart';
import 'package:instagram/explorerPage/explorer.dart';
import 'package:instagram/homePage/home.dart';
import 'package:instagram/post.dart';
import 'package:instagram/userProfilePage/user_profile.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  String Text = "";

  int selectedIndex = 0;

  List pages = [
    Home(),
    Explorer(),
    igtv(),
    activity(),
    user_profile(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],

      // backgroundColor: Colors.green,

      bottomNavigationBar: SizedBox(
        height: 50,

        child: BottomNavigationBar(

          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black45,
          selectedLabelStyle: TextStyle(fontSize: 0),
          // showSelectedLabels: true,
          // showUnselectedLabels: true,
          onTap: (index) => setState(() => selectedIndex = index),
          iconSize: 30,

          items: [
          BottomNavigationBarItem(label:Text, icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(label:Text, icon: Icon(Icons.search)),
          BottomNavigationBarItem(label:Text, icon: Icon(Icons.add_box_outlined)),
          BottomNavigationBarItem(label:Text, icon: Icon(Icons.favorite_border)),
          BottomNavigationBarItem(label:Text, icon: ClipOval(child: Image.network("https://randomuser.me/api/portraits/men/94.jpg", height: 30,))),
            // BottomNavigationBarItem(label:Text, icon: Icon(Icons.account_circle_outlined)),
          ],),
      ),
    );
  }
}
