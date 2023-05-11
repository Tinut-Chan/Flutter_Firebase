import 'package:flutter/material.dart';

class FooterSetting extends StatelessWidget {
  const FooterSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100.0,
          height: 100.0,
          padding: const EdgeInsets.all(10.0),
          child: Image.asset('assets/image/movie.png'),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'The IMDb Movies & TV app for Android gives you access to our catalog of more than 4 million movie',
            textAlign: TextAlign.center,
          ),
        ),
        const Text('Version ')
      ],
    );
  }
}
