import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/app_colors.dart';
class SellerListPage extends StatelessWidget {
  final int selectedDegree;
  final String plantTitle;

  SellerListPage({
    required this.selectedDegree,
    required this.plantTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(

        backgroundColor: AppColors.primaryColor,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'قائمة البائعين للدرجة ال${_numberToArabic(selectedDegree)}',
            style: TextStyle(color: Colors.white), // Set text color to white
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white), // Set icon color to white
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0), // Adjust the radius as needed
            bottomRight: Radius.circular(0.0), // Adjust the radius as needed
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100.0),
              bottomRight: Radius.circular(100.0), // Adjust the radius as needed
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: _getSellersForDegree(selectedDegree).length,
                  itemBuilder: (context, index) {
                    final seller = _getSellersForDegree(selectedDegree)[index];
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width:2,color: Colors.black12),
                        ),
                      ),
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Price
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(FontAwesomeIcons.coins, size: 20.0),
                              SizedBox(width: 8.0),
                              Text('${seller.pricePerTon}طن/ج', style: TextStyle(fontSize: 16.0)),
                            ],
                          ),
                          // Seller's Details
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(seller.name, style: TextStyle(fontSize: 16.0)),
                                    SizedBox(width: 8.0),
                                    Icon(FontAwesomeIcons.user, size: 16.0),

                                  ],
                                ),
                                SizedBox(height: 4.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(seller.contact, style: TextStyle(fontSize: 14.0)),
                                    SizedBox(width: 8.0),
                                    Icon(FontAwesomeIcons.phoneAlt, size: 16.0),
                                  ],
                                ),
                                SizedBox(height: 4.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(seller.location, style: TextStyle(fontSize: 14.0)),
                                    SizedBox(width: 8.0),
                                    Icon(FontAwesomeIcons.mapMarkerAlt, size: 16.0),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }

  List<Seller> _getSellersForDegree(int degree) {
    // Connect to your database or API to fetch the sellers
    // Here's an example using a mock database
    final database = [
      // Degree 1, موز sellers
      Seller(
        name: 'البائع أحمد (درجة 1, موز)',
        contact: '0123456789',
        location: 'القاهرة',
        pricePerTon: 5000,
        degree: 1,
        plantTitle: 'موز',
      ),
      Seller(
        name: 'البائع محمد (درجة 1, موز)',
        contact: '9876543210',
        location: 'الإسكندرية',
        pricePerTon: 5500,
        degree: 1,
        plantTitle: 'موز',
      ),
      // Degree 2, تفاح sellers
      Seller(
        name: 'البائع علي (درجة 2, تفاح)',
        contact: '5555555555',
        location: 'الجيزة',
        pricePerTon: 6000,
        degree: 2,
        plantTitle: 'تفاح',
      ),
      Seller(
        name: 'البائع حسن (درجة 2, تفاح)',
        contact: '1234567890',
        location: 'سوهاج',
        pricePerTon: 5750,
        degree: 2,
        plantTitle: 'تفاح',
      ),
      // Degree 3, برتقال sellers
      Seller(
        name: 'البائع إبراهيم (درجة 3, برتقال)',
        contact: '0987654321',
        location: 'أسوان',
        pricePerTon: 6500,
        degree: 3,
        plantTitle: 'برتقال',
      ),
      Seller(
        name: 'البائع خالد (درجة 3, برتقال)',
        contact: '7777777777',
        location: 'الأقصر',
        pricePerTon: 6250,
        degree: 3,
        plantTitle: 'برتقال',
      )
    ];

    // Filter the sellers based on the given degree and plant title
    return database.where((seller) => seller.degree == degree && seller.plantTitle == plantTitle).toList();  }
}

class Seller {
  final String name;
  final String contact;
  final String location;
  final double pricePerTon;
  final int degree;
  final String plantTitle;

  Seller({
    required this.name,
    required this.contact,
    required this.location,
    required this.pricePerTon,
    required this.degree,
    required this.plantTitle,
  });
}
String _numberToArabic(int number) {
  const List<String> arabicNumbers = [
    'اولى',
    'ثانية',
    'ثالثة',
    'رابعة',
    'خامسة',
    'سادسة',
    'سابعة',
    'ثامنة',
    'تاسعة',
    'عاشرة',
  ];
  return arabicNumbers[number - 1];
}