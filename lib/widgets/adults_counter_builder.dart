import 'package:flutter/material.dart';
import 'package:hotel_task/widgets/custom_item_counter_body.dart';

class AdultsCounterBuilder extends StatefulWidget {
  const AdultsCounterBuilder({
    super.key,
  });

  @override
  State<AdultsCounterBuilder> createState() => _AdultsCounterBuilderState();
}

class _AdultsCounterBuilderState extends State<AdultsCounterBuilder> {
  static const int maxAdults = 4;
  static const int minAdults = 1;

  int adultsCounter = minAdults;

  @override
  Widget build(BuildContext context) {
    return CustomItemCounterBody(
      itemText: 'Adults',
      count: adultsCounter,
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
    if (adultsCounter > minAdults) {
      adultsCounter--; // decrement the Adults number
    }
  }

  void increment() {
    if (adultsCounter < maxAdults) {
      adultsCounter++; // increment the Adults number
    }
  }
}
