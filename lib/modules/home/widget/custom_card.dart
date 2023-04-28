import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/core/constants/themes/theme_data.dart';

class CustomCardCategories extends StatelessWidget {
  const CustomCardCategories({
    super.key,
    this.title,
    this.image,
    this.onTap,
    this.isHeight = false,
    this.isWidth = false,
    this.height,
    this.width,
    this.netWorkImage,
    this.countShop,
  });

  final String? title;
  final String? image;
  final VoidCallback? onTap;
  final bool? isHeight;
  final bool? isWidth;
  final double? height;
  final double? width;
  final String? netWorkImage;
  final int? countShop;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
            left: 10.0, right: 10.0, top: 7.0, bottom: 7.0),
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15.0),
        width: isWidth == false ? 160.0 : width,
        height: isHeight == false ? 80.0 : height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: const Offset(0.3, 0.5),
              blurStyle: BlurStyle.solid,
              blurRadius: 1,
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? '',
                  maxLines: 2,
                  style: theme().textTheme.displayMedium!.copyWith(
                        overflow: TextOverflow.ellipsis,
                      ),
                ),
                Text(
                  countShop != null ? '$countShop' : ' ',
                  style: theme().textTheme.titleSmall!.copyWith(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.zero,
                width: 90,
                height: 40,
                child: image == null
                    ? CachedNetworkImage(
                        imageUrl: "$netWorkImage",
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                            value: downloadProgress.progress,
                          ),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      )
                    : Image.asset(
                        '$image',
                        fit: BoxFit.cover,
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
