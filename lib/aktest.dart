// lib/aktest.dart
import 'package:flutter/material.dart';

class AKTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AKTest Screen"),
      ),
      body: Center(
        child: Text(
          "Welcome to the AKTest Screen!",
          style: TextStyle(fontSize: 20),selectionColor: Colors.blue,
        ),
      ),
    );
  }
}
