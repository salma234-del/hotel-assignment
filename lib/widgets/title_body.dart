import 'package:flutter/material.dart';
import 'package:hotel_task/utils/colors.dart';
import 'package:hotel_task/utils/custom_painter.dart';
import 'package:hotel_task/utils/extensions.dart';
import 'package:hotel_task/utils/sizes.dart';
import 'package:hotel_task/utils/styles.dart';

class TitleBody extends StatelessWidget {
  const TitleBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: Sizes.width(context) * 0.37,
              height: 50,
              decoration: const BoxDecoration(
                color: AppColors.titleContainerBg,
              ),
              child: Center(
                child: Text(
                  "Hotels Search",
                  style: Styles.textStyleBold18,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            48.width,
          ],
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: CustomPaint(
            painter: TriangleCustomPainter(),
          ),
        ),
      ],
    );
  }
}
