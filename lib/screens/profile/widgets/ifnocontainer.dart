import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';


class InfoContainer extends StatelessWidget {
  final IconData icon;
  final String label;
InfoContainer({required this.icon, required this.label});
@override
Widget build(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon, size: 32, color: Colors.white),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 10,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
}