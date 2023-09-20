import 'package:breakfast/config/app.color.dart';
import 'package:flutter/material.dart';

// class CategoryModel {
//   String name;
//   String iconPath;
//   Color boxColor;

//   CategoryModel({
//     required this.name,
//     required this.iconPath,
//     required this.boxColor,
//   });
// }

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: 'Rice',
        iconPath: 'asset/rice.png',
        boxColor: AppColor.boxcolorfirst));

    categories.add(CategoryModel(
        name: 'Soup',
        iconPath: 'asset/food.png',
        boxColor: AppColor.boxcolorsecond));

    categories.add(CategoryModel(
        name: 'Pie',
        iconPath: 'asset/sosis.png',
        boxColor: AppColor.boxcolorfirst));

    categories.add(CategoryModel(
        name: 'Smoothies',
        iconPath: 'asset/pancakes.png',
        boxColor: AppColor.boxcolorsecond));
    categories.add(CategoryModel(
        name: 'Cake',
        iconPath: 'asset/icon.png',
        boxColor: AppColor.boxcolorfirst));
    categories.add(CategoryModel(
        name: 'Fried egg',
        iconPath: 'asset/fried-egg.png',
        boxColor: AppColor.boxcolorsecond));

    return categories;
  }
}
