import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:planting_app/screens/profile/widgets/infotile.dart';
import 'package:planting_app/screens/profile/widgets/profileheader.dart';
import '../../utils/app_colors.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout, color: AppColors.primaryColor),
            onPressed: () {
              // Add your logout functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              ProfileHeader(pickImage: _pickImage),
              InfoTile(
                icon: Icons.person,
                title: 'معلومات الصفحة الشخصية',
                subtitle: '...هنا توجد تفاصيل معلومات الصفحة الشخصية',
              ),
              InfoTile(
                icon: Icons.attach_money,
                title: 'المبالغ من المشترين',
                subtitle: 'المبلغ: \$1000',
              ),
              InfoTile(
                icon: Icons.money_off,
                title: 'المبالغ للبائعين',
                subtitle: 'المبلغ: \$500',
              ),
              InfoTile(
                icon: Icons.account_balance,
                title: 'الرصيد الحالي',
                subtitle: 'المبلغ: \$500',
              ),
              InfoTile(
                icon: Icons.trending_up,
                title: 'إحصائيات البيع',
                subtitle: '...إحصائيات بيعك هنا',
              ),
              InfoTile(
                icon: Icons.trending_down,
                title: 'إحصائيات الشراء',
                subtitle: '...إحصائيات شراءك هنا',
              ),
            ],
          ),
        ),
      ),
    );
  }
}









