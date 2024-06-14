import 'package:flutter/material.dart';
import 'package:planting_app/utils/styles.dart';

import '../../../models/plant.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../sellers/seller.dart';

class PlantItem extends StatelessWidget {
  const PlantItem({super.key, required this.plant});
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(AppImages.background),
              ),
              Center(
                child: Hero(
                  tag: plant.imageUrl,
                  child: Image.asset(
                    plant.imageUrl,
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                      plant.isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(plant.category, style: greyStyle),
          const SizedBox(
            height: 10,
          ),
          Text(
            plant.title,
            style: titleStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "السعر",
                    style: greyStyle,
                  ),
                  Text(
                    "\ج ${plant.price.toString()}",
                    style: priceStyle,
                  ),
                ],
              ),
              ElevatedButton(
  onPressed: () {
    final buttonRect = _getButtonRect(context);
    _showPopupMenu(context, buttonRect, plant.title);
    // Handle button press
  },
  style: ElevatedButton.styleFrom(
    fixedSize: const Size(40, 40), // Adjust the size as needed
    shape: const CircleBorder(),
    backgroundColor: Color.fromARGB(255, 118, 227, 194),
    padding: EdgeInsets.all(0), // Ensure no extra padding
  ),
  child: const Icon(
    Icons.add,
    color: Colors.white, // Set the icon color
    size: 24, // Adjust the size of the icon if needed
  ),
)

            ],
          )
        ],
      ),
    );
  }
}


void _showPopupMenu(BuildContext context, Rect buttonRect,planttitle) async {
  final screenSize = MediaQuery.of(context).size;
  final menuHeight = 200.0; // Assuming the menu has a fixed height of 200
  final menuPadding = 8.0; // Adjust this value to control the gap

  final menuPosition = Offset(
    buttonRect.left,
    buttonRect.bottom - menuHeight - menuPadding,
  );

  await showMenu(
    color: Colors.white,
    context: context,
    position: RelativeRect.fromLTRB(
      menuPosition.dx,
      menuPosition.dy,
      screenSize.width - buttonRect.right,
      screenSize.height - buttonRect.bottom - menuHeight,
    ),
    items: [
      PopupMenuItem(
        enabled: false,
        child: Container(
          height: menuHeight,
          width: double.infinity,
          child: Scrollbar(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(10, (index) {
                  return ListTile(
                    title: Text('درجة ${_numberToArabic(index + 1)}'),
                    onTap: () {
                      Navigator.pop(context, index + 1);
                    },
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    ],
    elevation: 8.0,
  ).then((value) {
    if (value != null) {

      ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(content: Align(
            alignment: Alignment.centerRight,
            child: Text('لقد اخترت درجة ${_numberToArabic(value)}',style: TextStyle(fontSize: 21 ),)),backgroundColor: Color.fromARGB(255, 118, 227, 194),),
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SellerListPage(
            selectedDegree: value,
            plantTitle: planttitle, // Replace with the actual plant title
          ),
        ),
      );
    }
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




Rect _getButtonRect(BuildContext context) {
  final RenderBox renderBox = context.findRenderObject() as RenderBox;
  final Offset buttonPosition = renderBox.localToGlobal(Offset.zero);
  return Rect.fromLTWH(
    buttonPosition.dx,
    buttonPosition.dy,
    renderBox.size.width,
    renderBox.size.height,
  );
}

