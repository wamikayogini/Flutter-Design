
import 'package:flutter/material.dart';
import 'package:macincode/ExploreMarketingScreen.dart';
import 'package:macincode/FashionScreen.dart';



class GrowWithHXScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Navigate back to ExploreMarketingScreen
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ExploreMarketingScreen()),
            );
          },
        ),
        title: const Text(
          "GROW WITH HX",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Add search functionality if needed
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),

          // Gradient Button with Navigation to FashionScreen
          Center(
            child: GestureDetector(
              onTap: () {
                // Navigate to FashionScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FashionScreen()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFCE0202), Color(0xFFEF17B3)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text(
                  "CULTIVATE SUCCESS WITH HX!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 40),

          // Circular Marketing Wheel
          Expanded(
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Marketing Wheel Image
                  Image.asset(
                    "assets/images/marketing_wheel.png",
                    width: 400,
                    height: 320,
                  ),

                  // Perfectly aligned HX Center Box
                  Positioned(
                    child: Transform.rotate(
                      angle: -0.2,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 8),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            "HX",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Section Icons
                  _positionedIcon("assets/images/customer_retention.png", "CUSTOMER RETENTION", 110, 75),
                  _positionedIcon("assets/images/advertise.png", "ADVERTISE", 0, 130),
                  _positionedIcon("assets/images/finance.png", "FINANCE", -110, 75),
                ],
              ),
            ),
          ),

          // Bottom Clouds and Text
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/images/clouds.png",
                width: double.infinity,
                fit: BoxFit.cover,
                height: 270,
              ),
              const Positioned(
                bottom: 35,
                child: Text(
                  "EXPLORE THE\nPOSSIBILITIES ABOVE!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to position each icon around the wheel
  Widget _positionedIcon(String iconPath, String label, double dx, double dy) {
    return Positioned(
      left: 150 + dx,
      top: 250 + dy,
      child: Column(
        children: [
          Image.asset(iconPath, width: 40, height: 40),
          const SizedBox(height: 5),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}