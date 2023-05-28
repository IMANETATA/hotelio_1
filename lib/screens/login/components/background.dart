import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget ?child;
  const Background({
    super.key,
    required this.child,
   // required this.size,
  });
  //final Size size;
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Container(
      margin:const EdgeInsets.all(0),
      width: double.infinity,
      height:  size.height,
      child:  Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0, 
            left: 0,
           child: Image.asset("assets/images/signup_top.png",
                              width:size.width*0.2 , )
          ),
          Positioned(
            bottom: 0, 
            right: 0,
            child: Image.asset("assets/images/login_bottom.png",
                              width:size.width*0.4 , )
          ),
          child!,
      ],),
    );
  }
}