import 'package:flutter/material.dart';

class Animatedicon extends StatefulWidget {
  const Animatedicon({super.key});

  @override
  State<Animatedicon> createState() => _AnimatediconState();
}

class _AnimatediconState extends State<Animatedicon> with SingleTickerProviderStateMixin {
// create the Animation Controller
 late AnimationController _animationController;
 // Initialize the Animation Controller
 @override
  void initState() {
    //  implement initState
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2) );
  }

  bool videoplaying = false;

  void _iconTapped() {
   if (videoplaying == false) {
    _animationController.forward();
    videoplaying = true;
   } else {
    _animationController.reverse();
    videoplaying = false;
   }

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _iconTapped,
          child: AnimatedIcon(
            icon: AnimatedIcons.ellipsis_search,
            progress: _animationController, 
            size: 150, 
            color: Colors.brown,
            ),
        ) ,
        ),
    );
  }
}