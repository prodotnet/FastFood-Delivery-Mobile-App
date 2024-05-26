import 'package:flutter/material.dart';
import 'menu.dart';

class FoodTile extends StatelessWidget {
  final MenuItems food;

  final void Function()? onTap;

  const FoodTile({super.key, required this.food, required this.onTap});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                //text food details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.name,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.tertiary),
                      ),
                      Text(
                        'R${food.price.toStringAsFixed(2)}',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        food.description,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),

                //food image
                const SizedBox(width: 10),

                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(food.imagepath, height: 120, width: 150),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.primary,
          endIndent: 25,
          indent: 25,
        ),
      ],
    );
  }
}
