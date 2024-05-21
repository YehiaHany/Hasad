import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:planting_app/screens/home/home.dart';

class AddYourDishesHome extends StatefulWidget {
  const AddYourDishesHome({Key? key}) : super(key: key);
  static String id = "/AddyourdishesHome";

  @override
  _AddYourDishesHomeState createState() => _AddYourDishesHomeState();
}

class _AddYourDishesHomeState extends State<AddYourDishesHome> {
  File? _image;
  String? _selectedItem;
  final List<String> _dropdownItems = ["شتوي", "خريفي", "صيفي", "ربيعي"];

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
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 22),
                  child: Text(
                    "أعرض منتجاتك",
                    style: TextStyle(color: Color.fromARGB(255, 18, 29, 26), fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            ClipOval(
              child: Container(
                width: 240, // Width and height of the circle
                height: 240,
                child: _image == null
                    ? Image.asset('assets/images/home3.png', fit: BoxFit.cover)
                    : Image.file(_image!, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 35),

            // Adding text input fields with labels
            buildTextInputField(label: "اسم المنتج"),
            SizedBox(height: 20),
            buildTextInputField(label: "الكميه"),
            SizedBox(height: 20),
            buildTextInputField(label: "النوع"),
            SizedBox(height: 20),
            buildText(label: "الموسم",size:20.0),
            SizedBox(height: 8),
            buildDropdownField(),
            SizedBox(height: 20),
            buildTextInputField(label: "السعر"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickImage,
              child: Text(
                'تحميل صوره',
                style: TextStyle(color: Colors.white, fontSize: 18), // Increased font size
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor:Color.fromARGB(255, 32, 33, 32) ,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Increased button size
              ),
            ),
            SizedBox(height: 35),
            GestureDetector(
              onTap: () async {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.8, // Decreased width
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 173, 245, 223), // Green color
                    Color.fromARGB(255, 118, 227, 194) // Green color with opacity
                  ]),
                ),
                child: Center(
                  child: Text(
                    "بيع",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build text input field with label
  Widget buildTextInputField({required String label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 22),
          child: Text(
            label,
            style: TextStyle(color: Color.fromARGB(255, 18, 29, 26), fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 8),
        Center(
          child: Container(
            width: 380, // Decreased width
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color.fromARGB(255, 118, 227, 194)), // Green border
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color.fromARGB(255, 118, 227, 194)), // Green focused border
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color.fromARGB(255, 118, 227, 194)), // Green enabled border
                ),
              ),
              style: TextStyle(color: const Color.fromARGB(255, 32, 33, 32)), // Dark text

            ),
          ),
        ),
      ],
    );
  }

  Widget buildText({required String label,required double size}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 450),
          child: Text(
            label,
            style: TextStyle(color: Color.fromARGB(255, 18, 29, 26), fontSize: size, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  // Helper method to build dropdown field
  Widget buildDropdownField() {
    return Center(
      child: Container(
        width: 380, // Decreased width
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color.fromARGB(255, 118, 227, 194)), // Green border
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color.fromARGB(255, 118, 227, 194)), // Green focused border
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color.fromARGB(255, 118, 227, 194)), // Green enabled border
            ),
          ),
          value: _selectedItem,
          items: _dropdownItems.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedItem = newValue;
            });
          },
          hint: Text(
            "اختر عنصر",
            style: TextStyle(color: Color.fromARGB(255, 32, 33, 32)),
          ),
        ),
      ),
    );
  }
}
