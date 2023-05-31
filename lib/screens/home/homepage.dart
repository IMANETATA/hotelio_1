import 'package:flutter/material.dart';
import 'package:hootelio/constants.dart';
import 'package:rive/rive.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar:SafeArea() ,
    );
  }
}

class SafeArea extends StatelessWidget {
  const SafeArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(12),
      margin:const EdgeInsets.symmetric(horizontal: 24) ,
      decoration:BoxDecoration(
        color: backgroundColor2.withOpacity(0.8),
        borderRadius:const BorderRadius.all(Radius.circular(24))
      ) ,
      child:const Row(
        children: [
          RiveAnimation.asset("assets/RiveAssets/icons.riv"),
          
        ],
      ),
    );
  }
}