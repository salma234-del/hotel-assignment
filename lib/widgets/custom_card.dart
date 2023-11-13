import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    this.contentChild,
    this.elevation = 5,
  });
  final Widget? contentChild;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          elevation: elevation,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: contentChild,
          )),
    );
  }
}
