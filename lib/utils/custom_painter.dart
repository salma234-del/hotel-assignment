import 'package:flutter/material.dart';
import 'package:hotel_task/utils/colors.dart';

class TriangleCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(0, 0);
    path.close();

    final paint1 = Paint()..color = AppColors.titleContainerBg;
    canvas.drawPath(path, paint1);

    final p1 = Offset(size.width, size.height);
    const p2 = Offset(0, 0);
    final paint2 = Paint()
      ..color = AppColors.white
      ..strokeWidth = 2;
    canvas.drawLine(p1, p2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
