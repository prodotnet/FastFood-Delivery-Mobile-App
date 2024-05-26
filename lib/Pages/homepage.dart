import 'package:fastfood_app/Pages/menu.dart';
import 'package:flutter/material.dart';
import 'package:fastfood_app/componenes/sider_header.dart';
import 'package:fastfood_app/Pages/homecomponents.dart';
import 'package:fastfood_app/Pages/mylocation.dart';
import 'package:fastfood_app/Pages/description.dart';
import 'package:fastfood_app/Pages/my_tabsbar.dart';
import 'package:provider/provider.dart';
import 'restaurant.dart';
import 'myfoodtile.dart';
import 'topmemudisplay.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCatagories.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

//get a list of food items and sort to the specific catagory

  List<MenuItems> _sortitems(FoodCatagories cata, List<MenuItems> allitems) {
    return allitems.where((food) => food.catagory == cata).toList();
  }

  List<Widget> getitemsBaseOnSort(List<MenuItems> meanuitems) {
    return FoodCatagories.values.map((category) {
      List<MenuItems> categoryMenu = _sortitems(category, meanuitems);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final foodmenu = categoryMenu[index];

          return FoodTile(
              food: foodmenu,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Mytopmenupic(
                            food: foodmenu,
                          ))));
        },
      );
    }).toList();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MySiderBar(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MyHomeComp(
            title: MyTabBar(tabController: _tabController),
            color: Colors.white,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 24,
                  endIndent: 24,
                  color: Colors.grey,
                ),

                //my location
                Mylocation(),
                //description
                MyDescription(),
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => Container(
            color: const Color.fromARGB(
                255, 20, 20, 20), // Set the background color to black
            child: TabBarView(
              controller: _tabController,
              children: getitemsBaseOnSort(restaurant.menuitems),
            ),
          ),
        ),
      ),
    );
  }
}
