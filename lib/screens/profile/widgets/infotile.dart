import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  InfoTile({required this.icon, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Material(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            trailing: Icon(icon, color: AppColors.primaryColor), // Changed leading to trailing
            title: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl, // Added textDirection
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(fontSize: 16),
              textDirection: TextDirection.rtl, // Added textDirection
            ),
          ),
        ),
        SizedBox(height: 1),
      ],
    );
  }
}