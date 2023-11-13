import 'package:flutter/material.dart';
import 'package:hotel_task/widgets/custom_item_counter_body.dart';

class ChildrenCounterBuilder extends StatefulWidget {
  const ChildrenCounterBuilder({
    super.key,
  });

  @override
  State<ChildrenCounterBuilder> createState() => _ChildrenCounterBuilderState();
}

class _ChildrenCounterBuilderState extends State<ChildrenCounterBuilder> {
  static const int maxChildren = 4;
  static const int minChildren = 0;

  int childrenCounter = minChildren;

  @override
  Widget build(BuildContext context) {
    return CustomItemCounterBody(
      itemText: 'Children',
      count: childrenCounter,
      mnRange: minChildren,
      onIncrement: () {
        setState(() {
          increment();
        });
      },
      onDecrement: () {
        setState(() {
          decrement();
        });
      },
    );
  }

  void decrement() {
    if (childrenCounter > minChildren) {
      childrenCounter--; // decrement the Children number
    }
  }

  void increment() {
    if (childrenCounter < maxChildren) {
      childrenCounter++; // increment the Children number
    }
  }
}
