import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HeroBanner extends StatelessWidget {
  final List<String> images = [
    'assets/images/banners/resturant1.jpeg',
    'assets/images/banners/resturant2.jpeg',
    'assets/images/banners/panipuri.jpeg',
    'assets/images/banners/bread_chat.jpeg',
    'assets/images/banners/chatdip.jpeg',
  ];

  HeroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300,
        autoPlay: true,
        viewportFraction: 1.0,
        enlargeCenterPage: false,
      ),
      items: images.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
