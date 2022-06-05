import 'package:flutter/material.dart';
import 'package:moc/data/food_data_model.dart';

Widget popularItem(Size size,
    {EdgeInsets? margin, required FoodDataModel? foodDataModel}) {
  return Container(
    margin: margin,
    padding: EdgeInsets.all(size.width * 0.04),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(size.width * 0.038),
      color: Colors.white,
    ),
    child: Row(children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size.width * 0.038),
        ),
        height: size.height * 0.08,
        width: size.width * 0.18,
        child: Image.asset(foodDataModel!.image!),
      ),
      SizedBox(
        width: size.width * 0.04,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            foodDataModel.name!,
            style: TextStyle(
                color: Colors.black,
                fontSize: size.width * 0.043,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          Text(
            foodDataModel.subTitle!,
            style: TextStyle(
              color: Colors.grey,
              fontSize: size.width * 0.038,
            ),
          ),
        ],
      ),
      const Spacer(),
      Text(
        foodDataModel.price!,
        style: TextStyle(
          color: Colors.orange,
          fontSize: size.width * 0.07,
          fontWeight: FontWeight.w800,
        ),
      ),
    ]),
  );
}
