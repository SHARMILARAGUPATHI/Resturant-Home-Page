import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About Indian Hotel", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(
            "Indian Hotel is a traditional South Indian restaurant offering authentic flavors and a variety of dishes. "
            "We take pride in delivering high-quality meals with a touch of heritage.",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
