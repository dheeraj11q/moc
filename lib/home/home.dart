import 'package:flutter/material.dart';
import 'package:moc/data/app_data.dart';
import 'package:moc/explore/explore.dart';
import 'package:moc/explore/widgets/food_item.dart';
import 'package:moc/explore/widgets/search_bar.dart';
import 'package:moc/explore/widgets/top_heading_item.dart';
import 'package:moc/explore_menu/explore_menu.dart';
import 'package:moc/home/home_widgets/banner.dart';
import 'package:moc/home/home_widgets/popular_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 251, 251),
      body: Container(
        padding: EdgeInsets.all(size.width * 0.04),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                topHeadingItem(size),
                SizedBox(
                  height: size.height * 0.03,
                ),
                searchBar(size),
                SizedBox(
                  height: size.height * 0.03,
                ),
                buyNowBanner(size),
                SizedBox(
                  height: size.height * 0.03,
                ),
                homeHeading(size,
                    title: "Nearest Restaurant",
                    title2: "View More", onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Explore()));
                }),

                SizedBox(
                  height: size.height * 0.03,
                ),
                // grid items

                SizedBox(
                  height: size.height * 0.28,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 2 / 2.5,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: 2,
                      itemBuilder: (BuildContext ctx, index) {
                        return foodItem(
                            size: size,
                            foodDataModel: foodData[index % foodData.length]);
                      }),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),

                homeHeading(size, title: "Popular Menu", title2: "View More",
                    onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ExploreMenu()));
                }),

                SizedBox(
                  height: size.height * 0.03,
                ),
                popularItem(size, foodDataModel: popularMenu[0]),
                SizedBox(
                  height: size.height * 0.03,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
