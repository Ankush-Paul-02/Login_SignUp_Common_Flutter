import 'package:flutter/material.dart';

class DashBoardCategoriesModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashBoardCategoriesModel(
      this.title, this.heading, this.subHeading, this.onPress);

  static List<DashBoardCategoriesModel> list = [
    DashBoardCategoriesModel("F", "Flutter", "10 Persons", null),
    DashBoardCategoriesModel("JS", "Java Script", "32 Persons", null),
    DashBoardCategoriesModel("Kt", "Kotlin", "18 Persons", null),
    DashBoardCategoriesModel("Py", "Python", "27 Persons", null),
  ];
}
