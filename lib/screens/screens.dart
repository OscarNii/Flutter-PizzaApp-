// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:nice/screens/pages/page1.dart';
import 'package:nice/screens/pages/page2.dart';
import 'package:nice/screens/pages/page3.dart';
import 'package:nice/screens/pages/page4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screens extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          const Page1(),
          const Page2(),
          const Page3(),
          const Page4(),
          SmoothPageIndicator(controller: _controller, count: 4),
        ],
      ),
    );
  }
}
