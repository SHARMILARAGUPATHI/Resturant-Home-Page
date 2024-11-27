import 'package:flutter/material.dart';

class ScrollableMenu extends StatelessWidget {
  final List<String> menuItems = [
    "Home",
    "Menu",
    "About Us",
    "Contact",
    "Specials",
    "Catering",
    "Branches"
  ];

  ScrollableMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: const Color.fromARGB(255, 8, 8, 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Text(
              menuItems[index],
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
