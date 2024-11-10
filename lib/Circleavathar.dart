import 'package:flutter/material.dart';

class Circleavathar extends StatefulWidget {
  const Circleavathar({super.key});

  @override
  State<Circleavathar> createState() => _CircleavatharState();
}

class _CircleavatharState extends State<Circleavathar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMW'),
      ),
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          child: CircleAvatar(
             backgroundImage: AssetImage('assets/Lottie/bmw.jpg'),
             backgroundColor: Colors.yellow,
          ),
        ),
      ),
    );
  }
}