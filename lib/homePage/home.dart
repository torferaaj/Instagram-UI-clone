import 'package:flutter/material.dart';
import 'package:instagram/insta__icons_icons.dart';
import 'postWidget.dart';
import 'package:instagram/resources.dart';
import 'storyListWidget.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  AppBar customAppBar(){
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Image.network(logo, height: 40,),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.photo_camera_outlined), color: Colors.black54,),
          IconButton(onPressed: () {}, icon: Icon(Insta_Icons.facebook_messenger), color: Colors.black54,)
        ],
    );
  }

  Row topTitleWidget() {
    return Row(
          children: [
            Text("Stories",
              style: subTitleStyle,
            ),

            Spacer(),

            Icon(Icons.arrow_right_sharp),

            Text("watch all",
              style: subTitleStyle,
            ),
          ],
    );
  }

  TextStyle subTitleStyle = TextStyle(fontWeight: FontWeight.w600, fontSize: 12);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: customAppBar(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // topTitleWidget(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryListWidget(subTitleStyle: subTitleStyle),
                ],
              ),
            ),
            Divider(
              thickness: 0.5,
            ),

            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (_,index) => PostWidget()//Complete post widget
            ),
          ],
        ),
      ),
    );
  }
}
