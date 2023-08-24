import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CrouselView extends StatelessWidget {
  const CrouselView({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1,
        reverse: false,
        autoPlay: true,
        height: MediaQuery.of(context).size.height / 2.3,
      ),
      items: ["assets/bg@3x.png", "assets/logo.png"].map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(item))),
            );
          },
        );
      }).toList(),
    );
  }
}
