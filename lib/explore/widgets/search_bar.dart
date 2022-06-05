import 'package:flutter/material.dart';
import 'package:moc/data/app_data.dart';

Widget searchBar(Size size) {
  return SizedBox(
    height: size.height * 0.072,
    child: Row(
      children: [
        Expanded(
          flex: 8,
          child: TextField(
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: size.height * 0.025),
                prefixIcon: Image.asset(
                  imagePath + "Icon Search.png",
                  scale: 3.5,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(size.width * 0.04),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                fillColor: const Color(0xffda6317).withOpacity(0.2),
                filled: true,
                hintText: "What do you want order?",
                hintStyle:
                    const TextStyle(color: Color.fromARGB(255, 214, 140, 93))),
          ),
        ),
        SizedBox(
          width: size.width * 0.04,
        ),
        Expanded(
          flex: 2,
          child: Image.asset(imagePath + "Filter Icon.png"),
        ),
      ],
    ),
  );
}
