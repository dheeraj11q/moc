import 'package:flutter/material.dart';
import 'package:moc/data/app_data.dart';
import 'widgets/food_item.dart';
import 'widgets/search_bar.dart';
import 'widgets/top_heading_item.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
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
