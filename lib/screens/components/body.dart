import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:hootelio/constants.dart';
import 'package:hootelio/screens/Signup/signup_screen.dart';
import 'package:hootelio/screens/components/background.dart';
import 'package:hootelio/components/rounded_button.dart';
import 'package:hootelio/screens/login/login_screen.dart';
//import 'package:hootelio/screens/login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {

    return Background(
      child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome to Hotelio",
            style: TextStyle(
              color: Color.fromARGB(255, 128, 119, 119),
              fontWeight: FontWeight.bold,
              fontFamily: "DancingScript" ,
              fontSize: 35),),
          const  SizedBox(height:30),
         Image.asset("assets/icons/lit.png",height:300,width: 300,fit: BoxFit.fill, ),
          const SizedBox(height:30),
                  RoundedButton(
                  text:"LOGIN",
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const LoginScreen();
                    }));
                  },
                  ),
                  RoundedButton(
                    text:"Sign Up",
                    color:kPrimaryLightColor ,
                    textColor: Colors.black,
                    press: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context){
              return const SignUpScreen();
            }));
                    },
                  )
          ],
        ),
      ) ,
    );
  }
}

