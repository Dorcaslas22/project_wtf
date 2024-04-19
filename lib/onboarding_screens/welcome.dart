import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
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
            image: DecorationImage(image: AssetImage("assets/woman1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: 413,
            width: 390,
            child: Column(
              children: [

              ],
            ),
          ),
        ),
      ),
      // body: Column(
      //   children: [
      //     Image.asset("assets/woman1.png"),
      //     Container(
      //       decoration: BoxDecoration(
      //         gradient: const LinearGradient(
      //             colors: [
      //               Color.fromRGBO(13, 92, 72, 0.6),
      //               Color.fromRGBO(59, 122, 71, 0.6),
      //               Color.fromRGBO(144, 151, 65, 0.6),
      //               Color.fromRGBO(179, 175, 59, 0.6),
      //               Color.fromRGBO(255, 193, 69, 0.6),
      //             ],
      //             begin: Alignment.topCenter,
      //             end: Alignment.bottomCenter
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
