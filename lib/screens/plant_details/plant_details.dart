import 'package:flutter/material.dart';
import 'package:planting_app/models/plant.dart';
import 'package:planting_app/screens/plant_details/first_half_details.dart';
import 'package:planting_app/screens/plant_details/second_half_details.dart';

class PlantDetails extends StatelessWidget {
  const PlantDetails({super.key, required this.singlePlant});
  final Plant singlePlant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FirstHalfDetails(
            plant: singlePlant,
          ),
          SecondHalfDetails(
            singlePlant: singlePlant,
          ),
        ],
      )),
      bottomSheet: Container(
          height: 80,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "السعر",
                      style: TextStyle(fontSize: 18,color: Colors.grey) ,
                      
                      
                    ),
                    Text(
                      "\ج ${singlePlant.price.toString()}",
                      style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 25, 25, 35),fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, 80),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Color.fromARGB(255, 25, 25, 35),
                    ),
                    child: const Text(
                      "دفع",
                      style: TextStyle(
                          letterSpacing: 2.0, color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )),
    );
  }
}
