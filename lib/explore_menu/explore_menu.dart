import 'package:flutter/material.dart';
import 'package:moc/data/app_data.dart';
import 'package:moc/explore/widgets/search_bar.dart';
import 'package:moc/explore/widgets/top_heading_item.dart';
import 'package:moc/home/home_widgets/banner.dart';
import 'package:moc/home/home_widgets/popular_item.dart';

class ExploreMenu extends StatelessWidget {
  const ExploreMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 252, 251, 251),
        body: Container(
            padding: EdgeInsets.all(size.width * 0.04),
            child: SafeArea(
                child: SingleChildScrollView(
                    child: Column(children: [
              topHeadingItem(size),
              SizedBox(
                height: size.height * 0.03,
              ),
              searchBar(size),
              SizedBox(
                height: size.height * 0.03,
              ),
              homeHeading(size, title: "Popular Menu"),
              SizedBox(
                height: size.height * 0.03,
              ),
              SizedBox(
                height: size.height * 0.7,
                child: ListView.builder(
                    itemCount: popularMenu.length,
                    itemBuilder: (context, index) {
                      return popularItem(size,
                          margin: const EdgeInsets.only(bottom: 20),
                          foodDataModel: popularMenu[index]);
                    }),
              )
            ])))));
  }
}
