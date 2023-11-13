import 'package:flutter/material.dart';
import 'package:hotel_task/screens/hotels_search_screen.dart';
import 'package:hotel_task/utils/functions.dart';

void main() async {
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HotelsSearchScreen(),
    );
  }
}
