import 'package:flutter/material.dart';
import 'package:flutter_firebase/modules/home/screen/get_data.dart';
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
          Expanded(
            child: CustomSlider(
              margin: EdgeInsets.zero,
              padEnds: false,
              viewportFraction: 0.8,
            ),
          ),
          Expanded(
            child: Data(),
          )
        ],
      ),
    );
  }
}
