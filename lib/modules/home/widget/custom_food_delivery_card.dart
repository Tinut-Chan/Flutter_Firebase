import 'package:flutter/material.dart';

class CustomFoodDeliveryCard extends StatelessWidget {
  const CustomFoodDeliveryCard(
      {super.key,
      this.padding,
      this.borderRadius,
      this.title,
      this.description,
      this.image});

  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final String? title;
  final String? description;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.only(top: 15.0, left: 15.0),
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(10.0),
        color: const Color(0xffffffff),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title ?? ''),
              Text(
                description ?? '',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          Expanded(
            child: image != null
                ? Image.asset(
                    '$image',
                    width: 70,
                    height: 70,
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
