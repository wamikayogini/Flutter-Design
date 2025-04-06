import 'package:flutter/material.dart';
import 'package:macincode/ExploreMarketingScreen.dart';
import 'package:macincode/FashionScreen.dart';


class Homescreen extends StatelessWidget {
  final List<Map<String, String>> products = List.generate(6, (index) {
    return {
      "image": (index % 2 == 0)
          ? "assets/images/black_suit.png"
          : "assets/images/white_suit.png",
      "title": "Carbon Black Liva Straight Printed Suit Set",
      "price": "\$180",
    };
  });

  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Home", style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // ✅ FIX: Navigate back to FashionScreen
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => FashionScreen()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.campaign, color: Colors.white),
            onPressed: () {
              // ✅ FIX: Navigate forward to ExploreMarketingScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExploreMarketingScreen()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Filter & List View Buttons
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _filterButton("NEW IN BIBAINDIA"),
                  const SizedBox(width: 8),
                  _filterButton("SORT & FILTER"),
                  const SizedBox(width: 8),
                  _filterButton("VIEW IN LIST VIEW"),
                ],
              ),
            ),
          ),

          // Product List
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return _productCard(product);
              },
            ),
          ),
        ],
      ),
    );
  }

  // Widget for Sort & Filter Buttons
  Widget _filterButton(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      ),
    );
  }

  // Product Card Widget
  Widget _productCard(Map<String, String> product) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              child: Image.asset(
                product["image"]!,
                fit: BoxFit.cover,
                height: 300,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Suit Set",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    product["title"]!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    product["price"]!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(Icons.open_in_new, size: 28),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}