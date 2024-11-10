import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


import 'package:splash/aktest.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  get splash => null;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200, // Adjust height as needed
            child: Center(
              child: LottieBuilder.asset("assets/Lottie/Lottie Lego.json"),
            ),
          ),
        ],
      ),
      nextScreen: AKTest(),
      splashIconSize: 200,
      backgroundColor: Colors.blueAccent,
    );
  }
}