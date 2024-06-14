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
      backgroundColor: Color.fromARGB(255, 118, 227, 194),
      appBar: AppBar(

        backgroundColor: Color.fromARGB(255, 118, 227, 194),
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
  // Degree 1
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
  Seller(
    name: 'البائع يوسف (درجة 1, بطيخ)',
    contact: '0111111111',
    location: 'طنطا',
    pricePerTon: 4800,
    degree: 1,
    plantTitle: 'بطيخ',
  ),
  Seller(
    name: 'البائع عمر (درجة 1, خيار)',
    contact: '0222222222',
    location: 'دمنهور',
    pricePerTon: 5300,
    degree: 1,
    plantTitle: 'خيار',
  ),
  Seller(
    name: 'البائع محمود (درجة 1, بصل)',
    contact: '0333333333',
    location: 'بورسعيد',
    pricePerTon: 5100,
    degree: 1,
    plantTitle: 'بصل',
  ),
  // Degree 2
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
  Seller(
    name: 'البائع كريم (درجة 2, جزر)',
    contact: '0444444444',
    location: 'المنيا',
    pricePerTon: 6200,
    degree: 2,
    plantTitle: 'جزر',
  ),
  Seller(
    name: 'البائع سامي (درجة 2, بطاطس)',
    contact: '0666666666',
    location: 'الفيوم',
    pricePerTon: 5900,
    degree: 2,
    plantTitle: 'بطاطس',
  ),
  Seller(
    name: 'البائع طارق (درجة 2, طماطم)',
    contact: '0777777777',
    location: 'بني سويف',
    pricePerTon: 5800,
    degree: 2,
    plantTitle: 'طماطم',
  ),
  // Degree 3
  Seller(
    name: 'البائع إبراهيم (درجة 3, جزر)',
    contact: '0987654321',
    location: 'أسوان',
    pricePerTon: 6500,
    degree: 3,
    plantTitle: 'جزر',
  ),
  Seller(
    name: 'البائع خالد (درجة 3, جزر)',
    contact: '7777777777',
    location: 'الأقصر',
    pricePerTon: 6250,
    degree: 3,
    plantTitle: 'جزر',
  ),
  Seller(
    name: 'البائع ياسين (درجة 3, بطيخ)',
    contact: '0888888888',
    location: 'المنوفية',
    pricePerTon: 6400,
    degree: 3,
    plantTitle: 'بطيخ',
  ),
  Seller(
    name: 'البائع عماد (درجة 3, موز)',
    contact: '0999999999',
    location: 'الغردقة',
    pricePerTon: 6300,
    degree: 3,
    plantTitle: 'موز',
  ),
  Seller(
    name: 'البائع عادل (درجة 3, خيار)',
    contact: '0112233445',
    location: 'مرسى مطروح',
    pricePerTon: 6200,
    degree: 3,
    plantTitle: 'خيار',
  ),
  // Degree 4
  Seller(
    name: 'البائع سامر (درجة 4, طماطم)',
    contact: '0113344556',
    location: 'أسيوط',
    pricePerTon: 6000,
    degree: 4,
    plantTitle: 'طماطم',
  ),
  Seller(
    name: 'البائع زين (درجة 4, بطاطس)',
    contact: '0224455667',
    location: 'الزقازيق',
    pricePerTon: 6100,
    degree: 4,
    plantTitle: 'بطاطس',
  ),
  Seller(
    name: 'البائع نادر (درجة 4, تفاح)',
    contact: '0335566778',
    location: 'دمياط',
    pricePerTon: 5900,
    degree: 4,
    plantTitle: 'تفاح',
  ),
  Seller(
    name: 'البائع مازن (درجة 4, بصل)',
    contact: '0446677889',
    location: 'السويس',
    pricePerTon: 5800,
    degree: 4,
    plantTitle: 'بصل',
  ),
  Seller(
    name: 'البائع إيهاب (درجة 4, جزر)',
    contact: '0557788990',
    location: 'الإسماعيلية',
    pricePerTon: 5700,
    degree: 4,
    plantTitle: 'جزر',
  ),
  // Degree 5
  Seller(
    name: 'البائع سيف (درجة 5, موز)',
    contact: '0668899001',
    location: 'قنا',
    pricePerTon: 6200,
    degree: 5,
    plantTitle: 'موز',
  ),
  Seller(
    name: 'البائع جلال (درجة 5, بطيخ)',
    contact: '0779900112',
    location: 'شرم الشيخ',
    pricePerTon: 6300,
    degree: 5,
    plantTitle: 'بطيخ',
  ),
  Seller(
    name: 'البائع أنور (درجة 5, خيار)',
    contact: '0880011223',
    location: 'العريش',
    pricePerTon: 6400,
    degree: 5,
    plantTitle: 'خيار',
  ),
  Seller(
    name: 'البائع فهد (درجة 5, طماطم)',
    contact: '0991122334',
    location: 'طابا',
    pricePerTon: 6500,
    degree: 5,
    plantTitle: 'طماطم',
  ),
  Seller(
    name: 'البائع وائل (درجة 5, بطاطس)',
    contact: '0112233445',
    location: 'دهب',
    pricePerTon: 6600,
    degree: 5,
    plantTitle: 'بطاطس',
  ),
  // Degree 6
  Seller(
    name: 'البائع نبيل (درجة 6, تفاح)',
    contact: '0223344556',
    location: 'المنصورة',
    pricePerTon: 6700,
    degree: 6,
    plantTitle: 'تفاح',
  ),
  Seller(
    name: 'البائع هيثم (درجة 6, بصل)',
    contact: '0334455667',
    location: 'السوهاج',
    pricePerTon: 6800,
    degree: 6,
    plantTitle: 'بصل',
  ),
  Seller(
    name: 'البائع هشام (درجة 6, جزر)',
    contact: '0445566778',
    location: 'قنا',
    pricePerTon: 6900,
    degree: 6,
    plantTitle: 'جزر',
  ),
  Seller(
    name: 'البائع زياد (درجة 6, موز)',
    contact: '0556677889',
    location: 'الأقصر',
    pricePerTon: 7000,
    degree: 6,
    plantTitle: 'موز',
  ),
  Seller(
    name: 'البائع حسين (درجة 6, بطيخ)',
    contact: '0667788990',
    location: 'الفيوم',
    pricePerTon: 7100,
    degree: 6,
    plantTitle: 'بطيخ',
  ),
  // Degree 7
  Seller(
    name: 'البائع مروان (درجة 7, خيار)',
    contact: '0778899001',
    location: 'الزقازيق',
    pricePerTon: 7200,
    degree: 7,
    plantTitle: 'خيار',
  ),
  Seller(
    name: 'البائع رامي (درجة 7, طماطم)',
    contact: '0889900112',
    location: 'طنطا',
    pricePerTon: 7300,
    degree: 7,
    plantTitle: 'طماطم',
  ),
  Seller(
    name: 'البائع عمرو (درجة 7, بطاطس)',
    contact: '0990011223',
    location: 'دمنهور',
    pricePerTon: 7400,
    degree: 7,
    plantTitle: 'بطاطس',
  ),
  Seller(
    name: 'البائع كمال (درجة 7, تفاح)',
    contact: '0111122334',
    location: 'بورسعيد',
    pricePerTon: 7500,
    degree: 7,
    plantTitle: 'تفاح',
  ),
  Seller(
    name: 'البائع أيمن (درجة 7, بصل)',
    contact: '0222233445',
    location: 'مرسى مطروح',
    pricePerTon: 7600,
    degree: 7,
    plantTitle: 'بصل',
  ),
  // Degree 8
  Seller(
    name: 'البائع مصطفى (درجة 8, جزر)',
    contact: '0333344556',
    location: 'دمياط',
    pricePerTon: 7700,
    degree: 8,
    plantTitle: 'جزر',
  ),
  Seller(
    name: 'البائع إبراهيم (درجة 8, موز)',
    contact: '0444455667',
    location: 'السويس',
    pricePerTon: 7800,
    degree: 8,
    plantTitle: 'موز',
  ),
  Seller(
    name: 'البائع سليم (درجة 8, بطيخ)',
    contact: '0555566778',
    location: 'الإسماعيلية',
    pricePerTon: 7900,
    degree: 8,
    plantTitle: 'بطيخ',
  ),
  Seller(
    name: 'البائع علاء (درجة 8, خيار)',
    contact: '0666677889',
    location: 'الغردقة',
    pricePerTon: 8000,
    degree: 8,
    plantTitle: 'خيار',
  ),
  Seller(
    name: 'البائع هشام (درجة 8, طماطم)',
    contact: '0777788990',
    location: 'شرم الشيخ',
    pricePerTon: 8100,
    degree: 8,
    plantTitle: 'طماطم',
  ),
  // Degree 9
  Seller(
    name: 'البائع سامي (درجة 9, بطاطس)',
    contact: '0888899001',
    location: 'العريش',
    pricePerTon: 8200,
    degree: 9,
    plantTitle: 'بطاطس',
  ),
  Seller(
    name: 'البائع أنس (درجة 9, تفاح)',
    contact: '0999990112',
    location: 'طابا',
    pricePerTon: 8300,
    degree: 9,
    plantTitle: 'تفاح',
  ),
  Seller(
    name: 'البائع طلال (درجة 9, بصل)',
    contact: '0111111223',
    location: 'دهب',
    pricePerTon: 8400,
    degree: 9,
    plantTitle: 'بصل',
  ),
  Seller(
    name: 'البائع علاء (درجة 9, جزر)',
    contact: '0222222334',
    location: 'دهب',
    pricePerTon: 8500,
    degree: 9,
    plantTitle: 'جزر',
  ),
  Seller(
    name: 'البائع حاتم (درجة 9, موز)',
    contact: '0333333445',
    location: 'دهب',
    pricePerTon: 8600,
    degree: 9,
    plantTitle: 'موز',
  ),
  // Degree 10
  Seller(
    name: 'البائع مازن (درجة 10, بطيخ)',
    contact: '0444444556',
    location: 'الإسماعيلية',
    pricePerTon: 8700,
    degree: 10,
    plantTitle: 'بطيخ',
  ),
  Seller(
    name: 'البائع كريم (درجة 10, خيار)',
    contact: '0555555667',
    location: 'مرسى مطروح',
    pricePerTon: 8800,
    degree: 10,
    plantTitle: 'خيار',
  ),
  Seller(
    name: 'البائع نديم (درجة 10, طماطم)',
    contact: '0666666778',
    location: 'دمنهور',
    pricePerTon: 8900,
    degree: 10,
    plantTitle: 'طماطم',
  ),
  Seller(
    name: 'البائع فؤاد (درجة 10, بطاطس)',
    contact: '0777777889',
    location: 'طنطا',
    pricePerTon: 9000,
    degree: 10,
    plantTitle: 'بطاطس',
  ),
  Seller(
    name: 'البائع مروان (درجة 10, تفاح)',
    contact: '0888888990',
    location: 'بورسعيد',
    pricePerTon: 9100,
    degree: 10,
    plantTitle: 'تفاح',
  ),
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