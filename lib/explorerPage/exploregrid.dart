import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  const ExploreGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Container(
        child: GridView.builder(
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(color: Colors.black26,),
              );
            }),
      ),
    );
  }
}
