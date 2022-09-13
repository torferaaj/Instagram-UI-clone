import 'package:flutter/material.dart';

class Grid2 extends StatelessWidget {
  const Grid2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 1,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(color: Colors.black26,),
          );
        });
  }
}
