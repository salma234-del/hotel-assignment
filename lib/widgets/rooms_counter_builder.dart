import 'package:flutter/material.dart';
import 'package:hotel_task/widgets/custom_item_counter_body.dart';

class RoomsCounterBuilder extends StatefulWidget {
  const RoomsCounterBuilder({
    super.key,
  });

  @override
  State<RoomsCounterBuilder> createState() => _RoomsCounterBuilderState();
}

class _RoomsCounterBuilderState extends State<RoomsCounterBuilder> {
  static const int maxRooms = 4;
  static const int minRooms = 1;

  int roomsCounter = minRooms;

  @override
  Widget build(BuildContext context) {
    return CustomItemCounterBody(
      itemText: 'Rooms',
      count: roomsCounter,
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
      if (roomsCounter > minRooms) {
      roomsCounter--; // decrement the rooms number
    }
  }

  void increment() {
    if (roomsCounter < maxRooms) {
      roomsCounter++; // increment the rooms number
    }
  }
}
