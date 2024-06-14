import 'package:flutter/material.dart';
import 'package:planting_app/utils/app_colors.dart';
import 'package:planting_app/utils/styles.dart';

import '../../../models/plant.dart';
import '../../../utils/app_images.dart';

class StorePlantsList extends StatelessWidget {
  StorePlantsList({super.key});


  final List<Plant> plants = Plant.getAllPlants();

  Widget generateStarRating(double rating) {
    rating = rating.clamp(0.0, 5.0);

    int fullStars = rating.floor();
    double remaining = rating - fullStars;

    List<Widget> starWidgets = [];

    for (int i = 0; i < fullStars; i++) {
      starWidgets.add(
          const Icon(Icons.star, size: 16, color: AppColors.primaryColor));
    }

    if (remaining > 0) {
      starWidgets.add(
          const Icon(Icons.star_half, size: 16, color: AppColors.primaryColor));
    }

    return Row(
      children: starWidgets,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Container(
                height: screenHeight * 0.25,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color: Colors.white,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        width: 150,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                AppImages.background,
                                width: 150,
                                height: screenHeight * 0.25,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Image.asset(
                              plants[index].imageUrl,
                              width: 150,
                              height: screenHeight * 0.25,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            plants[index].title,
                            style: titleStyle,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            plants[index].category,
                            style: greyStyle,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              generateStarRating(plants[index].rating),
                              const SizedBox(width: 5),
                              Text(plants[index].rating.toString()),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\ج ${plants[index].price.toString()}",
                                style: priceStyle,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColors.primaryColor,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "شراء",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (_, index) => const SizedBox(height: 12),
              itemCount: plants.length,
            ),
          ],
        ),
      ),
    );
  }
}
