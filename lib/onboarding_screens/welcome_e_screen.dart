
import 'package:flutter/material.dart';
import 'package:project_wtf/onboarding_screens/screen_1.dart';

class WelcomeEScreen extends StatefulWidget {
  const WelcomeEScreen({super.key});

  @override
  State<WelcomeEScreen> createState() => _WelcomeEScreenState();
}

class _WelcomeEScreenState extends State<WelcomeEScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          Container(
        height: 413,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight:Radius.circular(48),
            topLeft: Radius.circular(48),
          ),
          gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(13, 92, 72, 0.6),
                Color.fromRGBO(59, 122, 71, 0.6),
                Color.fromRGBO(144, 151, 65, 0.6),
                Color.fromRGBO(179, 175, 59, 0.6),
                Color.fromRGBO(255, 193, 69, 0.6),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          ),
        ),
      ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Image.asset("assets/woman1.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/logo2.png"),
                      SizedBox(height: 20),
                      Text("Welcome to Eclean!",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color.fromRGBO(4, 28, 21, 1),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text("Your eco-friendly companion for \nresponsible waste management.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize:14,
                          color: Color.fromRGBO(4, 28, 21, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(15,
            ),
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    color:Color.fromRGBO(13, 92, 70, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Screen_1()));
                    },
                    child: const Padding(padding: EdgeInsets.all(10),
                      child: Text("Get Started",
                        style: TextStyle(
                          color:Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
