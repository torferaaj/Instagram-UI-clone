import 'package:flutter/material.dart';
import 'package:instagram/bottombar.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BottomBar(),
    );
  }
}
