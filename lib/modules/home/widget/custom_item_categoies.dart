import 'package:flutter/material.dart';

class CustomCategoies extends StatelessWidget {
  const CustomCategoies({super.key, this.imgaes, this.label, this.onTapped});

  final String? imgaes;
  final String? label;
  final VoidCallback? onTapped;
  final bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '$imgaes',
              height: 70,
              width: 70,
            ),
            const SizedBox(height: 10.0),
            Text(
              '$label',
              style: const TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
