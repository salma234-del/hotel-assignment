import 'package:flutter/material.dart';
import 'package:hotel_task/utils/sizes.dart';

class ScreenImageBackground extends StatelessWidget {
  const ScreenImageBackground(
      {super.key, required this.imageUrl, required this.child});
  final String imageUrl;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.width(context),
      height: Sizes.height(context),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(imageUrl),
        fit: BoxFit.fill,
      )),
      child: child,
    );
  }
}
