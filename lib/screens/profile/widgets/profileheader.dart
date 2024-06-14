import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';
import 'inforow.dart';

class ProfileHeader extends StatelessWidget {
  final VoidCallback pickImage;

  ProfileHeader({required this.pickImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.black12, width: 2),
        ),
      ),
      child: Column(
        children: <Widget>[
          Center(
            child: GestureDetector(
              onTap: pickImage,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.primaryColor, // Background color for the avatar
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.green[800], // Color for the person icon
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.camera_alt,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              'اسر وليد',
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16),
          InfoRow(),
        ],
      ),
    );
  }
}