import 'package:fastfood_app/Pages/menu.dart';
import 'package:flutter/material.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final MenuItems food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const QuantitySelector(
      {super.key,
      required this.quantity,
      required this.food,
      required this.onIncrement,
      required this.onDecrement});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            //decrease
            GestureDetector(
              onTap: onDecrement,
              child: Icon(
                Icons.remove,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            //quatinty count
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Center(
                  child: Text(
                quantity.toString(),
              )),
            ),

            //increment

            GestureDetector(
              onTap: onIncrement,
              child: Icon(
                Icons.add,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ));
  }
}
