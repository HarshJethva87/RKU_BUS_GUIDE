import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderClass extends StatefulWidget {
  CarouselSliderClass({Key? key}) : super(key: key);

  @override
  State<CarouselSliderClass> createState() => _CarouselSliderClassState();
}

class _CarouselSliderClassState extends State<CarouselSliderClass> {
  final List<String> sliderImages = [
    'assets/slider_images/img-1.jpg',
    'assets/slider_images/img-2.jpg',
    'assets/slider_images/img-3.jpg',
    'assets/slider_images/img-4.jpg',
    'assets/slider_images/img-5.jpg',
    'assets/slider_images/img-6.jpg',
  ];

  // Images set in container
  //clipRRect Boarder
  List<Widget> displayImages() {
    return sliderImages
        .map((e) => ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                e,
                fit: BoxFit.cover,
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: displayImages(),
      options: CarouselOptions(
        enlargeCenterPage: true,
        autoPlay: true,
      ),
    );
  }
}
