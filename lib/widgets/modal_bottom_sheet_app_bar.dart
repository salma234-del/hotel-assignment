import 'package:flutter/material.dart';
import 'package:hotel_task/utils/styles.dart';

class ModalBottomSheetAppBar extends StatelessWidget {
  const ModalBottomSheetAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Styles.modalBottomShetAppBar,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            const Spacer(),
            const Text(
              'Rooms and Guests',
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(
                Icons.close,
                size: 23,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
