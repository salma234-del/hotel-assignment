import 'package:flutter/material.dart';
import 'package:hotel_task/utils/extensions.dart';
import 'package:hotel_task/utils/sizes.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.raduis = 5,
    this.withIcon = false,
    this.color,
    this.icon,
    this.topPadding = 8,
    this.bottomPadding = 8,
  });
  final String text;
  final VoidCallback onPressed;
  final double raduis;
  final bool withIcon;
  final TextStyle? textStyle;
  final Color? color;
  final Icon? icon;
  final double? topPadding;
  final double? bottomPadding;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.width(context),
      child: ElevatedButton(
        onPressed: onPressed,
        style: buildButtonStyle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: textStyle,
            ),
            if (withIcon)
              Row(
                children: [
                  15.width,
                  icon!,
                ],
              )
          ],
        ),
      ),
    );
  }

  ButtonStyle buildButtonStyle() => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(raduis),
        ),
        padding: EdgeInsets.only(
          top: topPadding!,
          bottom: bottomPadding!,
        ),
        backgroundColor: color,
      );
}
