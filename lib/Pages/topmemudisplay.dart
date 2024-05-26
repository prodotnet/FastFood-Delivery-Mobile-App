import 'package:fastfood_app/Pages/restaurant.dart';
import 'package:fastfood_app/componenes/buttons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'menu.dart';

class Mytopmenupic extends StatefulWidget {
  final MenuItems food;
  final Map<Addons, bool> selectedaddons = {};

  Mytopmenupic({
    super.key,
    required this.food,
  }) {
    //initialising the selected addons to be false
    for (Addons add in food.avaliable) {
      selectedaddons[add] = false;
    }
  }
  // This widget is the root of your application.
  @override
  State<Mytopmenupic> createState() => _MytopmenupicPage();
}

class _MytopmenupicPage extends State<Mytopmenupic> {
  //metode a to cart
  void addToCart(MenuItems food, Map<Addons, bool> selectedAddons) {
    //close the cart

    Navigator.pop(context);

    List<Addons> cuurentSelected = [];

    for (Addons addon in widget.food.avaliable) {
      if (widget.selectedaddons[addon] == true) {
        cuurentSelected.add(addon);
      }
    }

    context.read<Restaurant>().addtoCart(food, cuurentSelected);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //scafforld UI

        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                SafeArea(
                  child: Opacity(
                    opacity: 0.8,
                    child: Container(
                      margin: const EdgeInsets.only(left: 2),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios_rounded),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                //top image
                Image.asset(widget.food.imagepath),

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      //name
                      Text(
                        widget.food.name,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.tertiary),
                      ),

                      Text(
                        'R${widget.food.price.toStringAsFixed(2)}',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                      const SizedBox(height: 10),

                      //description
                      Text(
                        widget.food.description,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary),
                      ),

                      const SizedBox(height: 10),

                      Divider(color: Theme.of(context).colorScheme.primary),

                      const SizedBox(height: 10),
                      //addons
                      const Text(
                        "Add-Ons",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),

                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).colorScheme.primary)),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: widget.food.avaliable.length,
                          itemBuilder: (context, index) {
                            Addons addon = widget.food.avaliable[index];

                            //get individual addas UI

                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(
                                'R${addon.price}',
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),
                              value: widget.selectedaddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedaddons[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                Mybuttons(
                  onTap: () => addToCart(widget.food, widget.selectedaddons),
                  text: "Add to cart",
                ),

                const SizedBox(height: 24),
              ],
            ),
          ),
        ),

        //back button
      ],
    );
  }
}
