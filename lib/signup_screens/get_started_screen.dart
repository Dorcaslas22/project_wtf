import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:project_wtf/screens/login_screen.dart';
import 'package:project_wtf/signup_screens/verify_account_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SafeArea(
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              // SizedBox(height: 10),
             Padding(padding: EdgeInsets.symmetric(horizontal: 20),
               child: SizedBox(
                 width: MediaQuery.of(context).size.width*0.8,
                 child: const Text("Let’s Get Started",
                   style: TextStyle(
                     fontWeight: FontWeight.w600,
                     fontSize: 20,
                     color: Color.fromRGBO(4, 28, 21, 1),
                   ),
                 ),
               ),
             ),
               SizedBox(height: 10),
               const Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                 child: Text("Enter your phone number",
                   style: TextStyle(
                     fontWeight: FontWeight.w400,
                     fontSize: 18,
                     color: Color.fromRGBO(47, 47, 47, 1),
                   ),
                 ),
               ),
               SizedBox(height: 10),
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Padding(padding: EdgeInsets.all(20),
                     child: IntlPhoneField(
                       initialCountryCode: "IN",
                       decoration: InputDecoration(
                         hintText: "Input phone no",
                         labelText: "Phone number",
                         hintStyle: const TextStyle(
                             fontSize: 14,
                             fontWeight: FontWeight.w400,
                             color: Color.fromRGBO(106, 106, 106, 1)
                         ),
                         border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(8),
                             borderSide: BorderSide()
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
               SizedBox(height: 15),
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
                               MaterialPageRoute(builder:
                               (context) => const VerifyAccountScreen()));
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
              SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                 child: Row(
                  children: [
                   Expanded(
                    child: Divider(
                    color: Color.fromRGBO(106, 106, 106, 1),
                    thickness: 1,
                  ),
                 ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Or continue with", style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color:  Color.fromRGBO(47, 47, 47, 1),
                    ),),
                   ),
                   Expanded(child: Divider(
                   color: Color.fromRGBO(106, 106, 106, 1),
                   thickness: 1,
                      ),
                    ),
                  ],
                 ),
              ),
              SizedBox(height: 15),
              Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                 children: [
                     Expanded(
                       child: Container(
                        child: Padding(padding: EdgeInsets.all(10),
                          child: Image.asset("assets/google _1.png"),
                       ),
                     ),
                   ),
                       SizedBox(width: 5),
                       Expanded(
                         child: Container(
                          child: Padding(padding: EdgeInsets.all(10),
                             child: Image.asset("assets/facebook _1.png"),
                       ),
                     ),
                   ),
                        SizedBox(width: 5),
                       Expanded(
                         child: Container(
                             child: Padding(padding: EdgeInsets.all(10),
                               child: Image.asset("assets/apple.png"),
                        ),
                       ),
                     ),
                   ],
                 ),
               ),
               Spacer(),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     const Text("Have an account?", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                       color: Color.fromRGBO(3, 18, 14, 1),
                     ),
                  ),
                       GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const LoginScreen()));
                        },
                           child: const Text("Login", style: TextStyle(
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
