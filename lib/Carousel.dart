import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// carousel https://github.com/serenader2014/flutter_carousel_slider/blob/master/example/lib/main.dart
class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
      height: 160.0,
      items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Colors.amber
                ),
                child: Text('text $i', style: TextStyle(fontSize: 16.0),)
            );
          },
        );
      }).toList(),
    ) ;
  }
}
