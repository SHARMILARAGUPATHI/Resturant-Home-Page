import 'package:flutter/material.dart';

class FeaturedDishes extends StatelessWidget {
  final List<Map<String, String>> dishes = [
    {
      "name": "Dosa",
      "image": "assets/images/dishes/dosa.jpeg",
      "description": "Crispy and golden South Indian delight.",
      "price": "₹80"
    },
    {
      "name": "Idli",
      "image": "assets/images/dishes/Idli.jpeg",
      "description": "Soft, fluffy, and light steamed cakes.",
      "price": "₹50"
    },
    {
      "name": "Meals",
      "image": "assets/images/dishes/meals.jpeg",
      "description": "Traditional South Indian meals with variety.",
      "price": "₹120"
    },
  ];

  FeaturedDishes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Featured Dishes",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 250, // Fixed height for horizontal scroll
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dishes.length,
              itemBuilder: (context, index) {
                final dish = dishes[index];
                return Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: GestureDetector(
                    onTap: () {
                      // Handle tap, e.g., navigate to a dish details page
                      print("${dish['name']} tapped");
                    },
                    child: DishCard(
                      name: dish["name"]!,
                      image: dish["image"]!,
                      description: dish["description"]!,
                      price: dish["price"]!,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DishCard extends StatelessWidget {
  final String name;
  final String image;
  final String description;
  final String price;

  const DishCard({
    super.key,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 200, // Fixed width for cards
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(2, 4),
              ),
            ],
          ),
        ),
        Container(
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [Colors.black.withOpacity(0.6), Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          right: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                description,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                price,
                style: const TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
