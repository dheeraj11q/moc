import 'package:flutter/material.dart';

import '../moc.dart';

Widget topHeadingItem(Size size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: size.width * 0.7,
        child: Text(
          "Fine Your Favorite Food",
          style: TextStyle(
              color: Colors.black,
              fontSize: size.width * 0.1,
              fontWeight: FontWeight.w900),
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: size.width * 0.02),
        child: Material(
          borderRadius: BorderRadius.circular(size.width * 0.038),
          elevation: 1,
          child: Container(
            width: size.width * 0.12,
            padding: EdgeInsets.all(size.width * 0.029),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size.width * 0.035),
                color: Colors.white),
            child: Image.asset(imagePath + "Icon Notifiaction.png"),
          ),
        ),
      ),
    ],
  );
}
