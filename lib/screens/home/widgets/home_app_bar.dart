import 'package:flutter/material.dart';
import 'package:planting_app/utils/app_colors.dart';
import 'package:planting_app/utils/app_images.dart';
import 'package:planting_app/utils/app_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60, left: 25, right: 25),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              AppStrings.bigHeadline,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
              textDirection: TextDirection.rtl,
            ),

          ],
        ),
      ),
    );
  }
}
