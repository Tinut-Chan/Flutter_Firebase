import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/modules/home/controller/home_screen_controllers.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({
    super.key,
    required this.margin,
    required this.viewportFraction,
    required this.padEnds,
  });
  final EdgeInsetsGeometry? margin;
  final double viewportFraction;
  final bool padEnds;

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

final _homeController = Get.put(HomeController());

class _CustomSliderState extends State<CustomSlider> {
  List<String> img = [
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq87WieyFJ93-wR-FrTk0JG8kWz2sT8HtuGN7PkEQ3mxCEsFQmFoKOXZVP1__Yl3L-G08&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSufBLtBcOYXsfyEUB5ylgWVbJMkgJ5Jh3gKVIk1oOJqirHgguGB0T-wpdIjPXHeiTsgKo&usqp=CAU',
    'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202212/2280514f-5dfe-49f3-a9cf-1e5806bb155c-sixteen_nine.png?VersionId=uQo0w.pd6mDST25SCL3ENczHpFxG5f0D',
  ];
  CarouselController con = CarouselController();
  final bool? isEnable = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: con,
          itemCount: img.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            clipBehavior: Clip.antiAlias,
            width: double.infinity,
            margin: widget.margin,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                  img[itemIndex],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                _homeController.activeIndex.value = index;
              });
            },
            autoPlayCurve: Curves.decelerate,
            autoPlay: true,
            viewportFraction: widget.viewportFraction,
            padEnds: widget.padEnds,
            pageSnapping: true,
            aspectRatio: 1.0,
            initialPage: 0,
            height: 175,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
          ),
        ),
        const SizedBox(height: 5.0),
        isEnable == false
            ? AnimatedSmoothIndicator(
                onDotClicked: (index) {
                  debugPrint('0------$index');
                  setState(() {
                    con.animateToPage(index);
                    _homeController.activeIndex.value = index;
                  });
                },
                activeIndex: _homeController.activeIndex.value,
                count: img.length,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.white,
                  dotColor: Colors.grey.withOpacity(0.7),
                  dotHeight: 5.0,
                  dotWidth: 8.0,
                  expansionFactor: 3,
                  radius: 5,
                  spacing: 6.0,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
