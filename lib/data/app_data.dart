import 'package:moc/data/food_data_model.dart';

String imagePath = "assets/imageSlice/";

List<FoodDataModel> foodData = [
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

List<FoodDataModel> popularMenu = [
  FoodDataModel(
    image: imagePath + "Menu Photo.png",
    name: "Herbal Pancake",
    subTitle: "Warung Herbal",
    price: "\$7",
  ),
  FoodDataModel(
    image: imagePath + "Photo Menu.png",
    name: "Herbal Pancake",
    subTitle: "Warung Herbal",
    price: "\$5",
  ),
  FoodDataModel(
    image: imagePath + "Photo Menu1.png",
    name: "Herbal Pancake",
    subTitle: "Warung Herbal",
    price: "\$15",
  ),
];
