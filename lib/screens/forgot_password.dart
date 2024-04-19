import 'package:flutter/material.dart';
import 'package:project_wtf/screens/login_screen.dart';
import 'package:project_wtf/screens/otp_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}


class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Forgot Password?", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(4, 28, 21, 1),
        ),
        ),
      ),
      body:  Padding(padding: EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Padding(padding: EdgeInsets.all(10),
                  child: Text("Enter your registered phone number",style: TextStyle(
                     fontWeight: FontWeight.w400,
                     fontSize: 16,
                     color: Color.fromRGBO(47, 47, 47, 1),
                  ),),
             ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Phone number", style: TextStyle(
                        color: Color.fromRGBO(47, 47, 47, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color.fromRGBO(175, 175, 175, 1),width: 1.0),
                        ),
                        height: 50,
                        child: const TextField(
                          keyboardType: TextInputType.phone,
                          style: TextStyle(
                            color: Color.fromRGBO(106, 106, 106, 1),
                          ),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 10,bottom: 10,right:16,left: 16 ),
                              hintText: "Input phone no",
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(106, 106, 106, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              )
                          ),
                        ),
                      ),
                    ],
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
                                  MaterialPageRoute(builder: (context) => const OtpScreen()));
                             },
                                child: const Padding(padding: EdgeInsets.all(10),
                                       child: Text("Proceed",
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
           ),
        ),
    );
  }
}
