import 'package:flutter/material.dart';

import '../login/loginPage.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome()async{
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 390.0),
              child: Container(
                // color: Colors.red,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/insta-icon.png'),height: 70,),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 290.0),
              child: Container(
                // color: Colors.green,
                  child: Center(
                      child: Column(
                        children: [
                          Text("from", style: TextStyle(fontWeight: FontWeight.w400),),
                          Image(image: AssetImage('assets/meta-icon.png'),height: 35,),
                        ],
                      )
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
