import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({super.key, required this.tabController});

  List<Tab> buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last, // Extracting the name of the category
      );
    }).toList(); // Convert to a List<Tab>
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height:50,
      child: TabBar(
        controller: tabController,
        tabs: buildCategoryTabs(),
        indicatorSize: TabBarIndicatorSize.label,
        labelPadding: EdgeInsets.symmetric(vertical: 5.0),
        labelStyle: TextStyle(
            fontSize:12.0,
            fontWeight: FontWeight.bold), // Selected tab text style
        unselectedLabelStyle: TextStyle(
            fontSize: 8.0,
            color: Theme.of(context).colorScheme.inversePrimary),
      ),
    );
  }
}
