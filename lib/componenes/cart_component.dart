import 'package:fastfood_app/Pages/cartitems.dart';
import 'package:fastfood_app/Pages/restaurant.dart';
import 'package:fastfood_app/componenes/my_quatitycom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartComp extends StatelessWidget {
  final CartItems cartItems;

  const MyCartComp({super.key, required this.cartItems});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      // ignore: avoid_unnecessary_containers
      builder: (context, restaurant, child) => Container(
        child: Column(
          children: [
            Row(
              children: [
                //display image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    cartItems.food.imagepath,
                    height: 100,
                    width: 100,
                  ),
                ),

                const SizedBox(width: 10),

                //display name and price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cartItems.food.name),
                    Text(cartItems.food.price.toString()),
                  ],
                ),

                //increament 0r decrement quatity

                QuantitySelector(
                    quantity: cartItems.quantity,
                    food: cartItems.food,
                    onIncrement: () {
                      restaurant.removeItemsFromCart(cartItems);
                    },
                    onDecrement: () {
                      restaurant.addtoCart(
                          cartItems.food, cartItems.selectedItems);
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
