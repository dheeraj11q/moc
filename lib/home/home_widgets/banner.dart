import 'package:flutter/material.dart';
import 'package:moc/data/app_data.dart';

Widget buyNowBanner(Size size) {
  return Stack(
    children: [
      Container(
        height: size.height * 0.2,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imagePath + "Frame.png"))),
      ),
      Container(
        height: size.height * 0.2,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imagePath + "Image.png"))),
      ),
      Positioned(
        right: 0,
        top: size.height * 0.04,
        child: SizedBox(
          width: size.width * 0.45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Special Deal For October",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.013,
                    horizontal: size.width * 0.05),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size.width * 0.015),
                    color: Colors.white),
                child: Text(
                  "Buy Now",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: size.width * 0.03,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      )
    ],
  );
}

// heading

Widget homeHeading(Size size,
    {required String title, String? title2, VoidCallback? onTap}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(
            color: Colors.black,
            fontSize: size.width * 0.05,
            fontWeight: FontWeight.bold),
      ),
      InkWell(
        onTap: onTap,
        child: Text(
          title2 ?? "1",
          style: TextStyle(
              color: title2 != null
                  ? const Color.fromARGB(255, 214, 140, 93)
                  : Colors.transparent,
              fontSize: size.width * 0.038,
              fontWeight: FontWeight.normal),
        ),
      ),
    ],
  );
}
