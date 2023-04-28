import 'package:flutter/material.dart';
import 'package:flutter_firebase/modules/home/widget/custom_carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSlider(
            margin: EdgeInsets.all(10.0),
            padEnds: true,
            viewportFraction: 0.9,
          ),
        ],
      ),
    );
  }
}
