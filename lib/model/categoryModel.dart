import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryModel {
  final String name;
  final IconData icon;
  final bool active;

  CategoryModel({required this.name, required this.icon, required this.active});
}

// Data
List<CategoryModel> categoryData = [
  CategoryModel(name: "Cleaning", icon: FontAwesomeIcons.broom, active: false),
  CategoryModel(name: "Plumbing", icon: FontAwesomeIcons.wrench, active: false),
  CategoryModel(name: "Salon", icon: FontAwesomeIcons.cut, active: false),
  CategoryModel(
      name: "Carpenter", icon: FontAwesomeIcons.hammer, active: false),
  CategoryModel(name: "CarWash", icon: FontAwesomeIcons.car, active: false),
  CategoryModel(
      name: "Electrician", icon: FontAwesomeIcons.bolt, active: false),
];
