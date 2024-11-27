import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade100,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Follow Us",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.facebook),
                iconSize: 30,
                color: Colors.blueAccent,
                onPressed: () {},
                tooltip: 'Facebook',
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.instagram),
                iconSize: 30,
                color: Colors.pink,
                onPressed: () {},
                tooltip: 'Instagram',
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.twitter),
                iconSize: 30,
                color: Colors.blue,
                onPressed: () {},
                tooltip: 'Twitter',
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "© 2024 Indian Hotel. All Rights Reserved.",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
