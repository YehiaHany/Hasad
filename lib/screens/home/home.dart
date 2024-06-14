import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planting_app/screens/home/widgets/plant_categories.dart';
import 'package:planting_app/screens/home/widgets/plants_list.dart';
import 'package:planting_app/screens/home/widgets/popular_list.dart';
import 'package:planting_app/utils/app_colors.dart';

import '../../utils/app_images.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/search_filter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            const HomeAppBar(),
            const SearchFilter(),
            const PlantCategories(),
            PlantsList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 25, bottom: 10)  ,
                  child: Text(
                    textDirection: TextDirection.rtl,
                    "الاكثر مبيعا",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            PopularList(),
            SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
