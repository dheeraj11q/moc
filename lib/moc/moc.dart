import 'package:flutter/material.dart';
import 'food_data_model.dart';
import 'widgets/food_item.dart';
import 'widgets/search_bar.dart';
import 'widgets/top_heading_item.dart';

String imagePath = "assets/imageSlice/";

class Moc extends StatefulWidget {
  const Moc({Key? key}) : super(key: key);

  @override
  State<Moc> createState() => _MocState();
}

class _MocState extends State<Moc> {
  List foodData = [
    FoodDataModel(
        name: "Vegan Resto",
        image: imagePath + "Resturant Image.png",
        time: "12 min"),
    FoodDataModel(
        name: "Healthy Food", image: imagePath + "healthy.png", time: "30 min"),
    FoodDataModel(
        name: "Smart Resto",
        image: imagePath + "Restaurant Image22.png",
        time: "6 min")
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 251, 251),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(size.width * 0.04),
          child: Column(
            children: [
              topHeadingItem(size),
              SizedBox(
                height: size.height * 0.03,
              ),
              searchBar(size),

              // heading

              SizedBox(
                height: size.height * 0.03,
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Popular Restaurant",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: size.width * 0.05,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),

              // items

              Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 2 / 2.5,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: 10,
                    itemBuilder: (BuildContext ctx, index) {
                      return foodItem(
                          size: size,
                          foodDataModel: foodData[index % foodData.length]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
