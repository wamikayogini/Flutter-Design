import 'package:flutter/material.dart';
import 'package:macincode/GrowWithHXScreen.dart';
import 'package:macincode/HomeScreen.dart';

class FashionScreen extends StatelessWidget {
  const FashionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Navigate back to GrowWithHXScreen
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => GrowWithHXScreen()),
            );
          },
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.cover,
            ),
          ),

          // Overlay Text
          Positioned(
            top: 80,
            left: 20,
            right: 0,
            child: const Text(
              "One Of The\nMost Loved\nEthnic Brands\nIn India",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
            ),
          ),

          // Card Section
          Positioned(
            bottom: 100,
            left: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Brand Logo and User Image
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, 
                    children: [
                      Image.asset(
                        "assets/images/biba_logo.png",
                        width: 40,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "BIBAINDIA",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      ClipOval(
                        child: Image.asset(
                          "assets/images/user.png",
                          width: 70,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // Title
                  const Center(
                    child: Text(
                      "Spring Summer Collection 2024",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 5),

                  // Description
                  const Text(
                    "Biba extends its global reach by unveiling ethnic dresses designed for women and girls, aligning with the fashion trends of both Autumn Winter and Spring Summer.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),

                  const SizedBox(height: 10),

                  // Buttons
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            // Navigate to HomeScreen
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Homescreen()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center, 
                           children: [
                           const Icon(Icons.home, color: Colors.red, size: 20),
                           const SizedBox(width: 10),
                           const Text(
                            "GO TO HOME",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                           ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          onPressed: () {
                            // Add favorite functionality
                          },
                          icon: const Icon(Icons.star_border, size: 28, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Swipe Up Indicator to go to Home
          Positioned(
            bottom: 30,
            child: GestureDetector(
              onTap: () {
                // Navigate to HomeScreen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Homescreen()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "SWIPE UP TO GO HOME",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8), 
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4), 
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15), 
                    child: const Icon(Icons.arrow_upward, size: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}