import 'package:fastfood_app/Pages/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fastfood_app/componenes/cart_component.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        //access the cart
        final userCart = restaurant.cart;

        //Scaffold

        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: userCart.length,
                    itemBuilder: (context, index) {
                      final cartItem = userCart[index];

                      return MyCartComp(cartItems: cartItem);
                    }),
              ),
            ],
          ),
        );
      },
    );
  }
}
