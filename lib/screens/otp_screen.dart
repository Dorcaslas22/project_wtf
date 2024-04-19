import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:project_wtf/screens/reset_password.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String otp ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text("Recovery Code", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(4, 28, 21, 1),
          ),
        ),
      ),
      body:  SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Padding(padding: EdgeInsets.all(15),
                 child: Text("Enter the recovery 6 digit code sent \nto your number ********465",
                   style: TextStyle(
                 fontWeight: FontWeight.w400,
                 fontSize: 16,
                  color: Color.fromRGBO(47, 47, 47, 1),
                  ),
                 ),
                 ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: OTPTextField(
                    fieldWidth: 45,
                    length: 6,
                    fieldStyle: FieldStyle.box,
                    outlineBorderRadius: 5,
                    keyboardType: TextInputType.number,
                    width: MediaQuery.of(context).size.width,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(47, 47, 47, 1),
                    ),
                    textFieldAlignment: MainAxisAlignment.spaceBetween,
                    onChanged: (pin){
                      otp = pin;
                    },
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
                                MaterialPageRoute(builder: (context) => const ResetPassword()));
                          },
                          child: const Padding(padding: EdgeInsets.all(10),
                            child: Text("Verify Code",
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
                SizedBox(height: 10),
                Container(
                 alignment: Alignment.center,
                 child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const OtpScreen()));
                  },
                  child: const Text("Resend code",
                     style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(13, 92, 70, 1),
                    ),),
                 ),
               ),
             ],
          ),
       ),
    );
  }
}
