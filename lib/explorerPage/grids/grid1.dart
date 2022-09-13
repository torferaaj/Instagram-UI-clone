import 'package:flutter/material.dart';

class Grid1 extends StatelessWidget {
  const Grid1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(color: Colors.black26,),
          );
        });
  }
}
