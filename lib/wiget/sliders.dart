import 'package:flutter/material.dart';

class CarouselSliderWiget extends StatelessWidget {
  final List<Widget> items;
  final int activeIndex;
  final Function(int) onPageChanged;

  CarouselSliderWiget({
    required this.items,
    this.activeIndex = 0,
    required this.onPageChanged, required bool autoplay, required double viewportFraction, required double aspectRatio,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.8),
        onPageChanged: onPageChanged,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return items[index];
        },
      ),
    );
  }
}


class ImageCarouselSlider extends StatefulWidget {
  const ImageCarouselSlider({Key? key}) : super(key: key);

  @override
  State<ImageCarouselSlider> createState() => _ImageCarouselSliderState();
}

class _ImageCarouselSliderState extends State<ImageCarouselSlider> {
  int _currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600.0,
      height: 600.0,
      // alignment: Alignment.center,
      child: CarouselSliderWiget(
        items: [
          Image.asset(
            'images/test_movie_1.png',
            // fit: BoxFit.contain,
          ),
          Image.asset(
            'images/test_movie_1.png',
            // fit: BoxFit.contain,
          ),
          Image.asset(
            'images/test_movie_1.png',
            // fit: BoxFit.contain,
          ),
        ],
        activeIndex: 0,
        autoplay: true,
        viewportFraction: 0.8,
        aspectRatio: 16 / 9,
        onPageChanged: (index) {
          print("Page changed to $index");
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }
}
