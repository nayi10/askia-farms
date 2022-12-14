import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';

class ProductImagesSlider extends StatelessWidget {
  final Product product;
  final CarouselController carouselController = CarouselController();

  ProductImagesSlider({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: product.images.length,
        itemBuilder: (BuildContext context, int index, int pageViewIndex) {
          return InkWell(
              onTap: () {},
              child: Image.network(
                product.images[index].toString(),
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                errorBuilder: (ctx, child, err) => Text(err.toString()),
              ));
        },
        carouselController: carouselController,
        options: CarouselOptions(
          height: 250,
          viewportFraction: 1.0,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: false,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.easeIn,
          enlargeCenterPage: false,
          scrollDirection: Axis.horizontal,
        ));
  }
}
