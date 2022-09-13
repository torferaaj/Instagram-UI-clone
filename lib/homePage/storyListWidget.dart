import 'package:flutter/material.dart';
import 'storyModel.dart';
import 'storyWidget.dart';

class StoryListWidget extends StatelessWidget {
  const StoryListWidget({
    Key? key,
    required this.subTitleStyle,
  }) : super(key: key);

  final TextStyle subTitleStyle;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Stack(
                    children: [
                      ClipOval(
                        child: Image.network(
                          "https://randomuser.me/api/portraits/men/94.jpg",/* storyModel[0].imagePath*/
                          height: 70,
                        ),
                      ),

                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Material(
                            borderRadius: BorderRadius.circular(50),
                            child: Icon(
                              Icons.add_circle,
                              color: Colors.blue,
                              size: 20,
                            ),
                          )),
                    ]),
              ),
              Text("Your story",
                style: subTitleStyle,
              ),
            ],
          ),
          for(int i = 0; i < profilesList.length; i++) ...{
            StoryWidget(
            profileName: profilesList[i].profileName,
            imagePath: profilesList[i].imagePath)
          }
        ],
      ),
    );
  }
}
