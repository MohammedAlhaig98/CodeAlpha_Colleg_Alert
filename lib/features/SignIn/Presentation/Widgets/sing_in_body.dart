import 'package:college_project_test/core/Nav_Bars/bottom_nav_bar.dart';
import 'package:college_project_test/core/custom_buttons.dart';
import 'package:college_project_test/core/custom_textfield.dart';
import 'package:college_project_test/core/custome_google_button.dart';
import 'package:college_project_test/core/size_constants.dart';
import 'package:college_project_test/core/text_button.dart';
import 'package:college_project_test/core/utils/size_config.dart';
import 'package:college_project_test/features/SignUp/Presentation/sign_up.dart';
import 'package:flutter/material.dart';

import '../../../Home/Presentation/home.dart';
class SingInBody extends StatefulWidget {
  const SingInBody({super.key});

  @override
  State<SingInBody> createState() => _SingInBodyState();
}

class _SingInBodyState extends State<SingInBody> {

  final emailController=TextEditingController();
  final passwordController=TextEditingController();

  //Methods

  void signInButton(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomNavBar()));
    });
  }
  /*void googleAccount(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SplashScreen()));
    });
  }*/
  void moveToSignUp(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const VerticalSpace(value: 1),
      
          //Sing In Text
          const Text("Sign In",
            style: TextStyle(
              color: Colors.black,
              fontSize: 34,
              fontWeight: FontWeight.bold
            ),
          ),
          //Description Text
          const Row(
            children: [
              Spacer(flex: 1,),
              Expanded(
                flex: 7,
                child: Text("Please provide us with your information in order to login your account",
                  style: TextStyle(
                    color: Color(0xFF1E1E1E),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(flex: 1,),
            ],
          ),
          const VerticalSpace(value: 1.8),
      
          //Email TextField
          CustomTextfield(
              controller: emailController,
              labelText: "Email",
              obscureText: false,
              fieldSize: 18.0,
          ),
          const VerticalSpace(value: 1.0),
          //Password TextField
          CustomTextfield(
              controller: passwordController,
              labelText: "Password",
              obscureText: true,
              fieldSize: 18.0,
          ),
      
          //Sing In Button
          const VerticalSpace(value: 1.8),
          CustomButtons(
            onTap: signInButton,
            borderRaduis: 8,
            text: "Sign In"
          ),
          const VerticalSpace(value: 0.2),

          // Don't have account
          CustomTextButton(
              mainText: "Don’t you have an account?",
              buttonText: "Sign Up",
              onTap: moveToSignUp,
          ),
          const VerticalSpace(value: 1.8),
      
          //App Logo
          SizedBox(
              height: SizeConfig.defaultSize! * 6,
              child: Image.asset("assets/images/App_Logo.png")
          ),
          const VerticalSpace(value: 1.8),

          //Or Continue with
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text("Or Continue with",
                    style:TextStyle(
                        color: Color.fromARGB(255,30,30,30),
                        fontSize: 13
                    ) ,),
                ),
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const VerticalSpace(value: 1.8),

          //Google Buttons
          CustomGoogleButton(
              borderRaduis: 8,
              onTap: (){}
          ),
          const VerticalSpace(value: 1.2)
        ],
      ),
    );
  }
}
