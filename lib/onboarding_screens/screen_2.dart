import 'package:flutter/material.dart';
import 'package:project_wtf/onboarding_screens/screen_1.dart';
import 'package:project_wtf/onboarding_screens/screen_3.dart';

class Screen_2 extends StatelessWidget {
  const Screen_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/onboarding2.png"),
            SizedBox(height: 30),
            Text("Learn About Waste Sorting",
              textAlign: TextAlign.center,
              style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(4, 28, 21, 1)
              ) ,
            ),
            Text("Get tips on reducing waste at home and making eco-friendly choices.",
              textAlign: TextAlign.center,
              style:TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(4, 28, 21, 1)
              ) ,
            ),
            SizedBox(height: 150),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const Screen_1()));
                        },
                        child: Text("Back",
                          style:TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color.fromRGBO(106, 106, 106, 1),
                          ) ,
                        ),),
                      Positioned(
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const Screen_3()));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            backgroundColor: Color.fromRGBO(13, 92, 70, 1),
                          ),
                          child:Icon(Icons.arrow_forward_ios,color: Colors.white,),
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
    );
  }
}

