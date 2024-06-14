import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planting_app/screens/home/home.dart';
import 'package:planting_app/screens/root/login.dart';
import 'package:planting_app/screens/root/root.dart';

import 'database/database_helper.dart';
import 'utils/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dbHelper = DatabaseHelper();
  await dbHelper.insertUser('ahmed@gmail.com', '123');
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hasad',
      theme: ThemeData(
          fontFamily: "Roboto",
          primaryColor: AppColors.primaryColor,
          scaffoldBackgroundColor: AppColors.backgroundColor),
      home: HomePage(),
    );
  }
}
