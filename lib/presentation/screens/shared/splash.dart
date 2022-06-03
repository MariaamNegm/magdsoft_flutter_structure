import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/login.dart';




class splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return AnimatedSplashScreen(
       duration: 1000,
       splashTransition:SplashTransition.fadeTransition,
       splashIconSize:double.infinity,
       backgroundColor: Colors.white,
       nextScreen: login(),
       splash:Image.asset("images/logo.png",fit: BoxFit.none,width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height),
     );
  }

}
