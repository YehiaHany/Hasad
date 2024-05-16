import 'package:flutter/material.dart';
import 'package:planting_app/utils/app_colors.dart';
import 'package:planting_app/utils/styles.dart';

import '../../models/plant.dart';

class SecondHalfDetails extends StatelessWidget {
  const SecondHalfDetails({super.key, required this.singlePlant});
  final Plant singlePlant;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "التفاصيل",
            style: titleStyle.copyWith(fontSize: 20),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            singlePlant.description,
            style: const TextStyle(height: 1.5),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity, // or specify a specific width
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      _buildDimensionTile(
                        icon: Icons.height,
                        title: "الارتفاع",
                        value: singlePlant.height.toString(),
                        context: context,
                      ),
                      _buildDimensionTile(
                        icon: Icons.water,
                        title: "المنشأ",
                        value: singlePlant.wateringFrequency.toString(),
                        context: context,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      _buildDimensionTile(
                        icon: Icons.line_weight,
                        title: "الكم (kg)",
                        value: singlePlant.weight.toString(),
                        context: context,
                      ),
                      _buildDimensionTile(
                        icon: Icons.width_normal,
                        title: "الموسم",
                        value: singlePlant.height.toString(),
                        context: context,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDimensionTile({
    required String title,
    required String value,
    required IconData icon,
    required BuildContext context,
  }) {
    return SizedBox(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.containerColor,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }
}
