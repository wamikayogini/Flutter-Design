import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class Animatedbutton extends StatefulWidget {
  const Animatedbutton({super.key});

  @override
  State<Animatedbutton> createState() => _AnimatedbuttonState();
}

class _AnimatedbuttonState extends State<Animatedbutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LikeButton(
          size: 80,
          likeCount: 150,
          countPostion: CountPostion.bottom,
        ),
      ),
    );
  }
}