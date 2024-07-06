import 'package:college_project_test/core/custom_buttons.dart';
import 'package:college_project_test/core/custom_textfield.dart';
import 'package:college_project_test/core/size_constants.dart';
import 'package:college_project_test/core/text_button.dart';
import 'package:college_project_test/features/SignIn/Presentation/sing_in.dart';
import 'package:flutter/material.dart';

import '../../../../core/custome_google_button.dart';
import '../../../Home/Presentation/home.dart';
class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final confirmPasswordController=TextEditingController();
  final firstNameController=TextEditingController();
  final lastNameController=TextEditingController();

  //Methods
  void moveToSignIn(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SingIn()));
    });
  }
  void signUpButton(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const VerticalSpace(value: 1),
          // Sign Up Text
          const Text("Sign Up",
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
                child: Text("Please provide us with your information in order to Create your account",
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

          // First Name / Last Name Text Field
          Row(
            children: [
              Expanded(
                child: CustomTextfield(
                    controller: firstNameController,
                    labelText: "First Name",
                    obscureText: false,
                    fieldSize: 14.0,
                ),
              ),
              Expanded(
                child: CustomTextfield(
                    controller: lastNameController,
                    labelText: "Last Name",
                    obscureText: false,
                    fieldSize: 14.0,
                ),
              ),
            ],
          ),
          const VerticalSpace(value: 1),

          //Email TextField
          CustomTextfield(
              controller: emailController,
              labelText: "Email",
              obscureText: false,
              fieldSize: 18.0,
          ),
          const VerticalSpace(value: 0.5),

          //Password TextField
          CustomTextfield(
              controller: passwordController,
              labelText: "Password",
              obscureText: true,
              fieldSize: 18.0,
          ),
          const VerticalSpace(value: 0.5),

          //Email TextField
          CustomTextfield(
              controller: confirmPasswordController,
              labelText: "Confirm Password",
              obscureText: true,
              fieldSize: 18.0,
          ),
          const VerticalSpace(value: 1.8),

          //Sign Up Button
          CustomButtons(
              borderRaduis: 8,
              text: "Sign Up",
              onTap: signUpButton,
          ),
          const VerticalSpace(value: 0.5),

          //Have Account
           CustomTextButton(
              buttonText: "Sign In",
              mainText: "Already Have an account?",
              onTap: moveToSignIn,
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
