import 'package:fastfood_app/Pages/cart_page.dart';
import 'package:flutter/material.dart';

class MyHomeComp extends StatelessWidget {
  final Widget child;
  final Widget title;
  final Color color;

  const MyHomeComp({
    super.key,
    required this.child,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        //cart button
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyCartPage(),
                ));
          },
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      foregroundColor: Theme.of(context).colorScheme.secondary,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
