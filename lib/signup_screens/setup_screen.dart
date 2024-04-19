import 'package:flutter/material.dart';
import 'package:project_wtf/signup_screens/add_address_screen.dart';

class SetupScreen extends StatefulWidget {
  const SetupScreen({super.key});

  @override
  State<SetupScreen> createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  bool isRememberMe = false;

  Widget buildFirstName(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("First Name",
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
            border: Border.all(
                color: Color.fromRGBO(175, 175, 175, 1),width: 1.0),
          ),
          height: 50,
          child: const TextField(
            obscureText: true,
            style: TextStyle(
              color: Color.fromRGBO(106, 106, 106, 1),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                  top: 10,bottom: 10,right:16,left: 16 ),
              hintText: "John",
              hintStyle: TextStyle(
                color: Color.fromRGBO(106, 106, 106, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLastName(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Last Name",
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
            border: Border.all(
                color: Color.fromRGBO(175, 175, 175, 1),width: 1.0),
          ),
          height: 50,
          child: const TextField(
            obscureText: true,
            style: TextStyle(
              color: Color.fromRGBO(106, 106, 106, 1),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                  top: 10,bottom: 10,right:16,left: 16 ),
              hintText: "Doe",
              hintStyle: TextStyle(
                color: Color.fromRGBO(106, 106, 106, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Email",
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
            border: Border.all(
                color: Color.fromRGBO(175, 175, 175, 1),width: 1.0),
          ),
          height: 50,
          child: const TextField(
            obscureText: true,
            style: TextStyle(
              color: Color.fromRGBO(106, 106, 106, 1),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                  top: 10,bottom: 10,right:16,left: 16 ),
              hintText: "doejogh@gmail.com",
              hintStyle: TextStyle(
                color: Color.fromRGBO(106, 106, 106, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Password",
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
            keyboardType: TextInputType.phone,
            style: TextStyle(
              color: Color.fromRGBO(106, 106, 106, 1),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                  top: 10,bottom: 10,right:16,left: 16 ),
              hintText: "Create new password",
              hintStyle: TextStyle(
                color: Color.fromRGBO(106, 106, 106, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              suffixIcon:Icon(Icons.visibility,
                color: Color.fromRGBO(106, 106, 106, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildConfirmPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Confirm password",
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
            keyboardType: TextInputType.phone,
            style: TextStyle(
              color: Color.fromRGBO(106, 106, 106, 1),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                  top: 10,bottom: 10,right:16,left: 16 ),
              hintText: "Confirm your password",
              hintStyle: TextStyle(
                color: Color.fromRGBO(106, 106, 106, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              suffixIcon:Icon(Icons.visibility,
                color: Color.fromRGBO(106, 106, 106, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildReferralCode(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Referral code(optional)",
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
            border: Border.all(
                color: Color.fromRGBO(175, 175, 175, 1),width: 1.0),
          ),
          height: 50,
          child: const TextField(
            obscureText: true,
            style: TextStyle(
              color: Color.fromRGBO(106, 106, 106, 1),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                  top: 10,bottom: 10,right:16,left: 16 ),
              hintText: "Referral code",
              hintStyle: TextStyle(
                color: Color.fromRGBO(106, 106, 106, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildTermsCondition(){
    return SizedBox(
        height: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
           children: [
           Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
             value: isRememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (bool? value) {
               setState(() {
                 isRememberMe = value!;
               });
              },
             ),
            ),
          Text("I agree to EClean Terms of Service \nand Privacy Policy",
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 12,
          ),),
        ],
       ),
         );
  }

  Widget buildCreateBtn(){
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
                    MaterialPageRoute(builder: (context) => const AddAddressScreen()));
              },
              child: const Padding(padding: EdgeInsets.all(10),
                child: Text("Create account",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Set Up Your Account", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(4, 28, 21, 1),
        ),),
      ),
      body:  SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 25,),
            child: SafeArea(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                const Padding(padding: EdgeInsets.all(10),
                  child: Text("Create an account and gain access to \nfeatures to help you reduce waste, recycle effectively, and earn rewards.",
                    style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color.fromRGBO(47, 47, 47, 1),
                 ),
                  ),
               ),
                 SizedBox(height: 10),
                buildFirstName(),
                SizedBox(height: 10),
                buildLastName(),
                 SizedBox(height: 10),
                 buildEmail(),
                 SizedBox(height: 10),
                 buildPassword(),
                 SizedBox(height: 10),
                 buildConfirmPassword(),
                 SizedBox(height: 10),
                 buildReferralCode(),
                 SizedBox(height: 10),
                 buildTermsCondition(),
                 SizedBox(height: 10),
                 buildCreateBtn(),
                 SizedBox(height: 10),
             ],
            ),
          ),
        ),
      ),
    );
  }
}
