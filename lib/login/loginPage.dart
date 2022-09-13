import 'package:flutter/material.dart';
import 'package:instagram/homePage/home.dart';
import 'package:instagram/homePage/homePage.dart';
import 'package:instagram/main.dart';

import '../resources.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  int buttonColor = 0xff26A9FF;

  bool inputTextNotNull = false;

  @override
  Widget build(BuildContext context) {

    double deviseWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height - 90,
          ),
            child: Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(logo, height: 60,),
                      SizedBox(height: deviseWidth * .2,),
                      Container(
                        width: deviseWidth * .90,
                        height: deviseWidth * .14,
                        decoration: BoxDecoration(
                          color: Color(0xffE8E8E8),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Center(
                            child: TextField(
                              onChanged: (text){
                                setState(() {
                                  if(usernameController.text.length >= 2 && passwordController.text.length >= 2){
                                    inputTextNotNull = true;
                                  }else{
                                    inputTextNotNull = false;
                                  }
                                });
                              },
                              controller: usernameController,
                              style: TextStyle(
                                fontSize: deviseWidth * .040,
                              ),
                              decoration: InputDecoration.collapsed(
                                hintText: 'Mobile number or username',
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: deviseWidth * .04,),
                      Container(
                        width: deviseWidth * .90,
                        height: deviseWidth * .14,
                        decoration: BoxDecoration(
                          color: Color(0xffE8E8E8),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Center(
                            child: TextField(
                              onChanged: (text){
                                setState(() {
                                  if(usernameController.text.length >= 2 && passwordController.text.length >= 2){
                                    inputTextNotNull = true;
                                  }else{
                                    inputTextNotNull = false;
                                  }
                                });
                              },
                              controller: passwordController,
                              obscureText: true,
                              style: TextStyle(
                                fontSize: deviseWidth * .040,
                              ),
                              decoration: InputDecoration.collapsed(
                                hintText: 'Password',
                                // errorText: "please fill"
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: deviseWidth * .04,),
                      inputTextNotNull?
                      GestureDetector(
                        onLongPressStart: (s){
                          setState(() {
                            buttonColor = 0xff78C9FF;
                          });
                        },
                        onLongPressEnd: (s){
                          setState(() {
                            buttonColor = 0xff26A9FF;
                          });
                        },
                        onTap: (){
                          print('Log In');
                        },

                        child: Container(
                          width: deviseWidth * .90,
                          height: deviseWidth * .14,
                          decoration: BoxDecoration(
                            color: Color(buttonColor),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Center(
                            child: TextButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) {
                                  //           return homePage();
                                  //         }));
                                  Navigator.pushReplacement<void, void>(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) => homePage(),
                                    ),
                                  );
                                 },
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: deviseWidth * .040,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                            ),
                          ),
                        ),
                      ):
                      Container(
                        width: deviseWidth * .90,
                        height: deviseWidth * .14,
                        decoration: BoxDecoration(
                          color: Color(0xff78C9FF),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacement<void, void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) => homePage(),
                                ),
                              );},
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: deviseWidth * .040,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // FlatButton(
                      //     padding: EdgeInsets.symmetric(vertical: 16,horizontal: 150),
                      //     onPressed: () {},
                      //     color: Color(0xff78C9FF),
                      //     child: Text(
                      //     'Log In',
                      //     style: TextStyle(
                      //       color: Colors.white,
                      //       fontSize: deviseWidth * .040,
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      //   ),
                      // ),
                      SizedBox(height: deviseWidth * .035,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Forgot your login details? ',
                            style: TextStyle(
                              fontSize: deviseWidth * .035,
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              print('Get help');
                            },
                            child: Text('Get help',
                              style: TextStyle(
                                fontSize: deviseWidth * .035,
                                color: Color(0xff002588),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: deviseWidth * .040,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 1,
                            width: deviseWidth * .40,
                            color: Color(0xffA2A2A2),
                          ),
                          SizedBox(width: 10,),
                          Text('OR',
                            style: TextStyle(
                              fontSize: deviseWidth * .040,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 1,
                            width: deviseWidth * .40,
                            color: Color(0xffA2A2A2),
                          ),
                        ],
                      ),
                      SizedBox(height: deviseWidth * .06,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network("https://cdn.freebiesupply.com/logos/large/2x/facebook-logo-2019.png", height: 20,),
                          SizedBox(width: 5,),
                          Text('Login with facebook',
                            style: TextStyle(
                              color: Color(0xff1877f2),
                              fontSize: deviseWidth * .040,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: deviseWidth,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Divider(),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account? ",
                              style: TextStyle(
                                fontSize: deviseWidth * .040,
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                print('Sign up');
                              },
                              child: Text('Sign up',
                                style: TextStyle(
                                  color: Color(0xff00258B),
                                  fontSize: deviseWidth * .040,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
