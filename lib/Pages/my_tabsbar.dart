import 'package:fastfood_app/Pages/menu.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({super.key, required this.tabController});
  // This widget is the root of your application.

  List<Tab> _catagortyview() {
    return FoodCatagories.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
        controller: tabController,
        tabs: _catagortyview(),
        indicatorColor: Colors.green,
        labelColor: Colors.green,
        unselectedLabelColor: Colors.white);
  }
}
