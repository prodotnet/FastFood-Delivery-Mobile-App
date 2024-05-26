import 'package:fastfood_app/Pages/menu.dart';

class CartItems {
  MenuItems food;
  List<Addons> selectedItems;
  int quantity;

  CartItems(
      {required this.food, required this.selectedItems, this.quantity = 1});

  double get totalprice {
    double addonsPrice =
        selectedItems.fold(0, (sum, addon) => sum + addon.price);

    return (food.price + addonsPrice) * quantity;
  }
}
