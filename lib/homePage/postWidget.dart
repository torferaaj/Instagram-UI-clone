import 'package:flutter/material.dart';
import 'package:insta_like_button/insta_like_button.dart';
import 'package:instagram/homePage/storyWidget.dart';
import 'package:like_button/like_button.dart';
import 'storyModel.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: InstaGradient(imagePath: profilesList[0].imagePath,
                  size: 35,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                    children: [
                      Text(profilesList[0].profileName,
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                      Text("Sponsored",
                        style: TextStyle(fontWeight: FontWeight.w100, fontSize: 12),
                      ),
                    ]),
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
          ),
          Container(
            color: Color(0xfff5f6f7),
            child: Stack(
              children: [
                  ClipRRect(
                    child: InstaLikeButton(
                      image: NetworkImage("https://cdn.wallpapersafari.com/63/36/EMR8AK.jpg"),
                      onChanged: () {
                        // Do something...
                      },
                      iconSize: 80,
                    ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 3),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 261.0, left: 11),
                        child: Container(
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                              color: Color(0xffd5d7db),
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 250.0),
                        child: IconButton(onPressed: () {}, icon: Icon(Icons.account_circle), iconSize: 14, color: Colors.white,),
                      ),
                    ],

                  ),
                ),

              ],
            ),

          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                LikeButton(),
                IconButton(onPressed: () {}, icon: Icon(Icons.maps_ugc_outlined), iconSize: 30, padding: EdgeInsets.only(left: 10),),
                IconButton(onPressed: () {}, icon: Icon(Icons.near_me_outlined), iconSize: 30,),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border_sharp), iconSize: 30,),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //like count
                Text("1,024 Likes",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),

                //Descripion slot text
                Row(
                    children: [
                      Text(profilesList[0].profileName,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      ),

                      Text(" best anime !!!",
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                    ]),
                Row(
                  children: [
                    Text("@${profilesList[0].profileName} ",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xff74d0f7)),
                    ),
                    Text("Believe me, I have seen a lot !",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                  ],
                ),

                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0)),
                  child:
                  Text("View all 241 comments",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black38),
                  ),
                ),

                Container(
                  height: 18,
                  // color: Colors.transparent,
                  child: Row(
                      children: [
                        Text("Gregory ",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text("@_Alfredo_ ",
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xff74d0f7)),
                        ),
                        Icon(Icons.local_fire_department_outlined, color: Colors.redAccent, size: 15,),
                        Icon(Icons.local_fire_department_outlined, color: Colors.redAccent, size: 15,),
                        Icon(Icons.local_fire_department_outlined, color: Colors.redAccent, size: 15,),
                        Spacer(),
                        IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border_outlined), iconSize: 15,)
                      ]),
                ),

                SizedBox(height: 5,),

                Container(
                  height: 18,
                  // color: Colors.transparent,
                  child: Row(
                      children: [
                        Text("Carole_Simmmons_ ",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text("@_Alfredo_ ",
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xff74d0f7)),
                        ),
                        Icon(Icons.favorite, color: Colors.redAccent, size: 15,),
                        Icon(Icons.favorite, color: Colors.redAccent, size: 15,),
                        Icon(Icons.favorite, color: Colors.redAccent, size: 15,),
                        Spacer(),
                        IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border_outlined), iconSize: 15,)
                      ]),
                ),

                SizedBox(height: 8,),

                Text("May 15, 2022",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 10, color: Colors.black45),
                ),
                SizedBox(height: 8,),


              ],
            ),
          ),

        ],
      ),
    );
  }
}
