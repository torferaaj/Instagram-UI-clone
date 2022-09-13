import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final String profileName;
  final String imagePath;
  TextStyle subTitleStyle = TextStyle(fontWeight: FontWeight.w600, fontSize: 12);

  StoryWidget({
    Key? key,
    required this.profileName,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          InstaGradient(imagePath: imagePath),
          Text(
              profileName,
              style: subTitleStyle,
          ),
        ],
      ),
    );
  }
}

class InstaGradient extends StatelessWidget {

  const InstaGradient({
    Key? key,
    required this.imagePath,
    this.size = 70,
  }) : super(key: key);

  final double size;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xfff7b555),
              Color(0xfff7ae25),
              Color(0xffcf1b4b),
              Color(0xffcf1b4b),
            ]),
      ),

      child: Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50)
        ),

        child: ClipOval(
          child: Image.network(
            imagePath,
            height: size,
          ),),
      ),
    );
  }
}
