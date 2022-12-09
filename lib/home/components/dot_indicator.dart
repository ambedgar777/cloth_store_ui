import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    required PageController controller,
    required this.imagePath,
  }) : _controller = controller, super(key: key);

  final PageController _controller;
  final List<String> imagePath;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 70,
      left: 140,
      right: 140,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          activeDotColor: Colors.white,
          dotHeight: 5,
          dotWidth: 12,
          dotColor: Colors.black,
        ),
        controller: _controller,
        count: imagePath.length,
      ),
    );
  }
}