import 'package:flutter/material.dart';
import 'package:macincode/FashionScreen.dart';
import 'package:macincode/GrowWithHXScreen.dart';



class ExploreMarketingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Go back
          },
        ),
        title: const Text(
          "EXPLORE MARKETING",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          const Text(
            "ELEVATE, ENGAGE, EXCEL",
            style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Lead The Way: Your Proactive Path To\nMarketing Triumph!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                marketingCard(
                  "Boost Your Growth with WhatsApp Business",
                  "Explore creators, see favorites, and extend invitations to other creators",
                  "assets/images/whatsapp_icon.png",
                  Colors.green,
                  context, // Pass context
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GrowWithHXScreen(),
                      ),
                    );
                  },
                ),
                marketingCard(
                  "Boost Your Reach with Facebook Ads",
                  "Optimize your campaigns and maximize engagement",
                  "assets/images/facebook_icon.png",
                  Colors.blue,
                  context, // Pass context
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FashionScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget marketingCard(String title, String subtitle, String imagePath, Color color, BuildContext context, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 280, 
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 4)),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                  bottomLeft: Radius.circular(20), 
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Image.asset(imagePath, width: 50, height: 50),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      letterSpacing: 0.8,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 12),
                width: 56,
                height: 56, 
                decoration: const BoxDecoration(
                  color: Colors.pink,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Center(
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward, color: Colors.white, size: 24,),
                    onPressed: onTap, // Navigate on button press
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}