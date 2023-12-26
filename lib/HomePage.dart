import 'package:demo/page1.dart';
import 'package:demo/page2.dart';
import 'package:demo/page3.dart';
import 'package:demo/page4.dart';
import 'package:demo/page5.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: [
                page1(),
                page2(),
                page3(),
                page4(),
                page5(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 5,
            effect: JumpingDotEffect(
              verticalOffset: 10,
              activeDotColor: Colors.pinkAccent,
              dotColor: Colors.pinkAccent.withOpacity(0.5),
              dotHeight: 20,dotWidth: 20,
            ),
          )
        ],
      ),
    );
  }
}
