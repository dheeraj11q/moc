import 'package:flutter/material.dart';
import '../food_data_model.dart';

Widget foodItem({required Size size, required FoodDataModel foodDataModel}) {
  return PhysicalModel(
    color: Colors.white,
    elevation: 10,
    shadowColor: Colors.grey,
    borderRadius: BorderRadius.circular(size.width * 0.038),
    child: Container(
      width: size.width * 0.43,
      padding: EdgeInsets.all(size.width * 0.04),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size.width * 0.038),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.15,
            width: size.width * 0.3,
            child: Image.asset(foodDataModel.image!),
          ),
          Text(
            foodDataModel.name!,
            style: TextStyle(
                color: Colors.black,
                fontSize: size.width * 0.045,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          Text(
            foodDataModel.time!,
            style: TextStyle(
              color: Colors.grey,
              fontSize: size.width * 0.038,
            ),
          ),
        ],
      ),
    ),
  );
}
