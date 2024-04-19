


import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:project_wtf/signup_screens/get_started_screen.dart';
import 'package:project_wtf/widgets/home_screen.dart';

import '../home_pages/home_view.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  Widget buildPhoneNumber(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 15),
          child: IntlPhoneField(
            initialCountryCode: "IN",
            decoration: InputDecoration(
              hintText: "Input phone no",
              labelText: "Phone number",
              hintStyle: TextStyle(
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
    );
  }

  Widget buildPassword(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Password",
          style: TextStyle(
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
            obscureText: true,
            style: TextStyle(
              color: Color.fromRGBO(106, 106, 106, 1),
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 10,bottom: 10,right:16,left: 16 ),
                hintText: "Input password",
                hintStyle: TextStyle(
                  color: Color.fromRGBO(106, 106, 106, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLoginBtn(){
    return Container(
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
                    MaterialPageRoute(builder: (context) =>  HomeScreen()));
              },
              child: const Padding(padding: EdgeInsets.all(10),
                child: Text("Login",
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
    );
  }

  Widget buildForgotPassword(){
    return Container(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ForgotPassword()));
        },
        child: const Text("Forgot Password",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(13, 92, 70, 1),
          ),),
      ),
    );
  }

  Widget buildDivider(){
    return const Padding(
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
    );
  }

  Widget buildSocialImg(){
    return Padding(
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
    );
  }

  Widget buildSignupBtn(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?", style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(3, 18, 14, 1),
        ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const GetStartedScreen()));
          },
          child: const Text("Sign up", style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(13, 90, 70, 1),
          ),),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Welcome Back!", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(4, 28, 21, 1),
        ),),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal:25),
        child: SafeArea(
          child: ListView(
            // C
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.all(10),
                child: Text("Login to your account",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color.fromRGBO(47, 47, 47, 1),
                ),),
              ),
              SizedBox(height: 10),
              buildPhoneNumber(),
              SizedBox(height: 10),
              buildPassword(),
              SizedBox(height: 20),
              buildLoginBtn(),
              SizedBox(height:10),
              buildForgotPassword(),
              SizedBox(height: 20),
              buildDivider(),
              SizedBox(height: 10),
              buildSocialImg(),
              Spacer(),
              buildSignupBtn(),
            ],
          ),
        ),
      ),
    );
  }
}
