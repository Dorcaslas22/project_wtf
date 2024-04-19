import 'package:flutter/material.dart';
import 'package:project_wtf/screens/login_screen.dart';
import 'package:project_wtf/signup_screens/get_started_screen.dart';

class Screen_3 extends StatelessWidget {
  const Screen_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/onboarding3.png"),
            SizedBox(height: 30),
            Text("Turn Trash into Treasure",
              textAlign: TextAlign.center,
              style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(4, 28, 21, 1)
              ) ,
            ),
            Text("Earn money by selling the recyclable materials and track your earnings.",
              textAlign: TextAlign.center,
              style:TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(4, 28, 21, 1)
              ) ,
            ),
            SizedBox(height: 20),
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
                            MaterialPageRoute(builder: (context) => const GetStartedScreen()));
                      },
                      child: const Padding(padding: EdgeInsets.all(10),
                        child: Text("Create Free Account",
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
            SizedBox(height: 5),
            Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Text("Already have an account?", style: TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.w400,
                   color: Color.fromRGBO(3, 18, 14, 1),
                 ),
               ),
                GestureDetector(
                    onTap: (){
                     Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()));
                   },
                    child: const Text("Login",
                      style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(13, 90, 70, 1),
                  ),),
                  ),
               ],
             ),
          ],
        ),
      ),
    );
  }
}


