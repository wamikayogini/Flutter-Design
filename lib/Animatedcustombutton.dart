import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Animatedcustombutton extends StatefulWidget {
  const Animatedcustombutton({super.key});

  @override
  State<Animatedcustombutton> createState() => _AnimatedcustombuttonState();
}

class _AnimatedcustombuttonState extends State<Animatedcustombutton> {
  double _padding =6.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTapDown: (_) =>setState(() {
            _padding = 0.0;
          }) ,
          onTapUp: (_) =>setState(() {
            _padding = 6.0;
          }),
          child: AnimatedContainer(
            padding: EdgeInsets.only(bottom: _padding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Colors.grey,
            ),
            duration:const Duration(milliseconds: 100),
            child: Container(
              padding:const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20
                ),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(13),
              ),
              
              child: Text(
                "OPTIONS",
                style: TextStyle(fontSize: 18),
                ),
              
            ),
          ),
        ),
      ),
    );
  }
}