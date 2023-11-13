import 'package:flutter/material.dart';
import 'package:hotel_task/utils/extensions.dart';
import 'package:hotel_task/widgets/screen_background_image.dart';
import 'package:hotel_task/widgets/search_hotels_form_body.dart';
import 'package:hotel_task/widgets/title_body.dart';
import '../utils/assets.dart';

class HotelsSearchScreen extends StatelessWidget {
  const HotelsSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ScreenImageBackground(
        imageUrl: Assets.hotelsSearchBackground,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const TitleBody(),
              5.height,
              const SearchHotelsFormBody(),
            ],
          ),
        ),
      ),
    );
  }
}
