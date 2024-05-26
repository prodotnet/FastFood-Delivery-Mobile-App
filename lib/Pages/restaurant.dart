import 'package:collection/collection.dart';
import 'package:fastfood_app/Pages/cartitems.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class Restaurant extends ChangeNotifier {
  //list of food

  final List<MenuItems> _menuitems = [
    /*
    Burgers
    *
    */
    MenuItems(
      name: "Chicken Cheese overload Burger",
      description:
          " The Chicken Cheese Overload Burger is the ultimate indulgence for cheese and chicken lovers alike. This decadent burger starts with a juicy and tender grilled chicken patty, seasoned to perfection with a blend of herbs and spices",
      imagepath: "lib/image/burgers/b1.jpg",
      price: 59.99,
      catagory: FoodCatagories.burger,
      avaliable: [
        Addons(name: "Cheese Slice", price: 6.99),
        Addons(name: "Mushroom", price: 9.99),
        Addons(name: "Sausage", price: 7.99)
      ],
    ),
    MenuItems(
      name: "Beef cheese burger",
      description:
          "The Beef Cheeseburger is a quintessential favorite among burger enthusiasts worldwide. It features a juicy and flavorful beef patty, typically made from ground beef seasoned with salt, pepper, and other spices for added depth of flavor.",
      imagepath: "lib/image/burgers/b6.jpg",
      price: 120.99,
      catagory: FoodCatagories.burger,
      avaliable: [
        Addons(name: "Cheese Slice", price: 6.99),
        Addons(name: "Mushroom", price: 9.99),
        Addons(name: "Sausage", price: 7.99)
      ],
    ),
    MenuItems(
      name: "Crispy King Burger",
      description:
          "The Crispy King Burger is a delectable creation featuring a crunchy and flavorful chicken patty. The patty is coated in a seasoned breading and deep-fried to perfection, resulting in a crispy exterior while maintaining juicy and tender meat inside",
      imagepath: "lib/image/burgers/b2.jpeg",
      price: 170.99,
      catagory: FoodCatagories.burger,
      avaliable: [
        Addons(name: "Cheese Slice", price: 6.99),
        Addons(name: "Mushroom", price: 9.99),
        Addons(name: "Sausage", price: 7.99)
      ],
    ),
    MenuItems(
      name: "Mini Sausage Burger",
      description:
          "The Mini Sausage Burger is a charming twist on the classic burger, featuring a small yet flavorful sausage patty as the star ingredient. The sausage patty is seasoned with herbs and spices, then grilled or pan-fried to perfection, ensuring a juicy and flavorful bite",
      imagepath: "lib/image/burgers/b3.jpg",
      price: 69.99,
      catagory: FoodCatagories.burger,
      avaliable: [
        Addons(name: "Cheese Slice", price: 6.99),
        Addons(name: "Mushroom", price: 9.99),
        Addons(name: "Sausage", price: 7.99)
      ],
    ),
    MenuItems(
      name: "BBQ burger",
      description:
          "The BBQ Burger is a mouthwatering creation that combines the bold flavors of barbecue with the classic appeal of a cheeseburger. The star of this burger is a juicy beef patty, seasoned and grilled to perfection to achieve a flavorful charred exterior",
      imagepath: "lib/image/burgers/b4.jpg",
      price: 229.99,
      catagory: FoodCatagories.burger,
      avaliable: [
        Addons(name: "Cheese Slice", price: 6.99),
        Addons(name: "Mushroom", price: 9.99),
        Addons(name: "Sausage", price: 7.99)
      ],
    ),
    MenuItems(
      name: "BBQ Beef Mushroom burger",
      description:
          "The BBQ Beef Mushroom Burger is a tantalizing twist on the classic cheeseburger, featuring a juicy beef patty complemented by savory sautéed mushrooms and tangy barbecue sauce",
      imagepath: "lib/image/burgers/b5.jpg",
      price: 140.99,
      catagory: FoodCatagories.burger,
      avaliable: [
        Addons(name: "Cheese Slice", price: 6.99),
        Addons(name: "Mushroom", price: 9.99),
        Addons(name: "Sausage", price: 7.99)
      ],
    ),
    MenuItems(
      name: "Full House Naga Burger",
      description:
          " The Full House Naga Burger is a fiery and flavorful creation that packs a punch with every bite. Named after the potent Naga chili pepper, this burger is not for the faint of heart",
      imagepath: "lib/image/burgers/b.jpg",
      price: 59.99,
      catagory: FoodCatagories.burger,
      avaliable: [
        Addons(name: "Cheese Slice", price: 6.99),
        Addons(name: "Mushroom", price: 9.99),
        Addons(name: "Sausage", price: 7.99)
      ],
    ),

    /**
   * 
   * Chickens
   */
    MenuItems(
      name: "Lemon Herb Grilled Chicken",
      description:
          " This recipe features a marinade of lemon juice, white wine vinegar, garlic, and fresh herbs. The chicken is grilled until charred and juicy, then topped with a squeeze of lemon juice and fresh parsley for added brightness​ (The Chunky Chef)​.",
      imagepath: "lib/image/chicken/c1.jpg",
      price: 92.99,
      catagory: FoodCatagories.chicken,
      avaliable: [
        Addons(name: "Extra chips", price: 6.99),
        Addons(name: "Cheese", price: 5.99),
        Addons(name: "bacon", price: 4.99)
      ],
    ),
    MenuItems(
      name: "Easy Grilled Chicken and Vegetables ",
      description:
          "This simple and quick recipe combines chicken breasts with a marinade of olive oil, lemon juice, garlic, smoked paprika, and chili flakes. The chicken and a variety of vegetables like bell peppers, zucchini, and asparagus are grilled together, making a complete meal​",
      imagepath: "lib/image/chicken/c2.webp",
      price: 104.99,
      catagory: FoodCatagories.chicken,
      avaliable: [
        Addons(name: "Extra chips", price: 6.99),
        Addons(name: "Cheese", price: 5.99),
        Addons(name: "bacon", price: 4.99)
      ],
    ),
    MenuItems(
      name: "Grilled Chicken Breasts",
      description:
          " These are marinated in a mixture that includes garlic powder, onion powder,  salt, and pepper. The breasts are grilled to perfection, ensuring they remain moist and flavorful, ideal for  sandwiches​",
      imagepath: "lib/image/chicken/c3.jpg",
      price: 145.99,
      catagory: FoodCatagories.chicken,
      avaliable: [
        Addons(name: "Extra chips", price: 6.99),
        Addons(name: "Cheese", price: 5.99),
        Addons(name: "bacon", price: 4.99)
      ],
    ),
    MenuItems(
      name: "Juicy Grilled Chicken Breasts:",
      description:
          " These are marinated in a mixture that includes garlic powder, onion powder, smoked paprika, salt, and pepper. The breasts are grilled to perfection, ensuring they remain moist and flavorful, ideal for salads or sandwiches​",
      imagepath: "lib/image/chicken/c4.jpg",
      price: 150.99,
      catagory: FoodCatagories.chicken,
      avaliable: [
        Addons(name: "Extra chips", price: 6.99),
        Addons(name: "Cheese", price: 5.99),
        Addons(name: "bacon", price: 4.99)
      ],
    ),

    /**
       * 
       *Pasts
       */

    MenuItems(
      name: "Pasta Basta",
      description:
          "Pasta Basta is a delightful Italian restaurant known for its fresh, homemade pasta and authentic flavors. The menu features a wide variety of pasta dishes, from classic spaghetti carbonara and rich lasagna to innovative creations like truffle-infused ravioli. Diners can customize their meals with a choice of pasta types and sauces, ensuring a personalized dining experience",
      imagepath: "lib/image/pasta/p1.jpeg",
      price: 229.99,
      catagory: FoodCatagories.pasta,
      avaliable: [
        Addons(name: " Beef", price: 16.99),
        Addons(name: "Chicken", price: 15.99)
      ],
    ),
    MenuItems(
      name: "sweet Lover Pasta",
      description:
          "Sweet Lover Pasta is a unique culinary creation that transforms traditional pasta into a delightful dessert. This innovative dish features tender, sweetened pasta noodles, often made with a hint of vanilla or almond essence to enhance the flavor. The pasta is lightly tossed with a sweet sauce—options can include a creamy white chocolate glaze, a rich dark chocolate ganache, or a fruity berry coulis.",
      imagepath: "lib/image/pasta/p2.jpeg",
      price: 45.99,
      catagory: FoodCatagories.pasta,
      avaliable: [
        Addons(name: " Beef", price: 16.99),
        Addons(name: "Chicken", price: 15.99)
      ],
    ),
    MenuItems(
      name: "Chicken Meal Pasta",
      description:
          "Chicken Meal Pasta is a satisfying and flavorful pasta dish that combines succulent grilled chicken with a variety of vegetables and pasta, creating a well-balanced and wholesome meal. The dish typically starts with marinated chicken breasts or thighs, grilled to perfection to impart a smoky flavor and juicy texture",
      imagepath: "lib/image/pasta/p3.webp",
      price: 39.99,
      catagory: FoodCatagories.pasta,
      avaliable: [
        Addons(name: " Beef", price: 16.99),
        Addons(name: "Chicken", price: 15.99)
      ],
    ),
    MenuItems(
      name: "Creamy Pasts",
      description:
          "Creamy Pasta is a decadent and indulgent dish that features pasta coated in a luscious, creamy sauce, creating a velvety texture and rich flavor profile. The sauce is the star of the dish, providing a luxurious and comforting element that elevates the pasta to new heights",
      imagepath: "lib/image/pasta/p4.webp",
      price: 129.99,
      catagory: FoodCatagories.pasta,
      avaliable: [
        Addons(name: " Beef", price: 16.99),
        Addons(name: "Chicken", price: 15.99)
      ],
    ),

/**
 * 
 * Pizza
 */
    MenuItems(
      name: "Pizza Biltz",
      description:
          "Pizza Blitz is a crowd-pleasing favorite that delivers a burst of flavor in every bite. This pizza is characterized by its thin and crispy crust, providing the perfect canvas for an abundance of toppings.",
      imagepath: "lib/image/pizza/p1.jpg",
      price: 199.99,
      catagory: FoodCatagories.pizza,
      avaliable: [
        Addons(name: "Mozzarella cheese", price: 12.99),
        Addons(name: "Extra Cheese", price: 6.99),
        Addons(name: "Sausage", price: 4.99),
        Addons(name: "Mustard", price: 4.99),
      ],
    ),
    MenuItems(
      name: "Spicy Sausage Pizza",
      description:
          "The Spicy Sausage Pizza is a fiery and flavorful creation that appeals to those who crave a little heat with their pizza. This pizza features a zesty marinara sauce infused with spices like red pepper flakes and garlic, providing a fiery base for the toppings ",
      imagepath: "lib/image/pizza/p2.jpg",
      price: 169.99,
      catagory: FoodCatagories.pizza,
      avaliable: [
        Addons(name: "Mozzarella cheese", price: 12.99),
        Addons(name: "Extra Cheese", price: 6.99),
        Addons(name: "Sausage", price: 4.99),
        Addons(name: "Mustard", price: 4.99),
      ],
    ),
    MenuItems(
      name: "B B Q Boomber pizza ",
      description:
          "The BBQ Bomber Pizza is a hearty and indulgent option that combines the smoky sweetness of barbecue sauce with savory toppings for a mouthwatering culinary experience. The pizza starts with a thick and chewy crust, providing a sturdy base to hold the flavorful toppings",
      imagepath: "lib/image/pizza/p3.jpg",
      price: 229.99,
      catagory: FoodCatagories.pizza,
      avaliable: [
        Addons(name: "Mozzarella cheese", price: 12.99),
        Addons(name: "Extra Cheese", price: 6.99),
        Addons(name: "Sausage", price: 4.99),
        Addons(name: "Mustard", price: 4.99),
      ],
    ),
    MenuItems(
      name: "Meaty hotdog pizza",
      description:
          "The Meaty Hotdog Pizza is a carnivore's dream, featuring an abundance of savory meats atop a classic pizza base. The pizza begins with a fluffy and chewy crust, providing the perfect foundation for the hearty toppings ",
      imagepath: "lib/image/pizza/p4.jpg",
      price: 129.99,
      catagory: FoodCatagories.pizza,
      avaliable: [
        Addons(name: "Mozzarella cheese", price: 12.99),
        Addons(name: "Extra Cheese", price: 6.99),
        Addons(name: "Sausage", price: 4.99),
        Addons(name: "Mustard", price: 4.99),
      ],
    ),
    MenuItems(
      name: "Cheddar Pizza",
      description:
          "The Cheddar Pizza is a delicious twist on the classic cheese pizza, featuring a creamy and flavorful cheddar cheese sauce as the base. The pizza starts with a golden-brown crust, providing a sturdy foundation for the toppings ",
      imagepath: "lib/image/pizza/p5.jpg",
      price: 189.99,
      catagory: FoodCatagories.pizza,
      avaliable: [
        Addons(name: "Mozzarella cheese", price: 12.99),
        Addons(name: "Extra Cheese", price: 6.99),
        Addons(name: "Sausage", price: 4.99),
        Addons(name: "Mustard", price: 4.99),
      ],
    ),
    MenuItems(
      name: "Dui King pizza",
      description:
          "The Dui King Pizza is a grand and indulgent creation that offers a tantalizing blend of flavors and textures. The pizza begins with a thick and fluffy crust, providing a hearty base to hold the generous toppings ",
      imagepath: "lib/image/pizza/p6.jpg",
      price: 139.99,
      catagory: FoodCatagories.pizza,
      avaliable: [
        Addons(name: "Mozzarella cheese", price: 12.99),
        Addons(name: "Extra Cheese", price: 6.99),
        Addons(name: "Sausage", price: 4.99),
        Addons(name: "Mustard", price: 4.99),
      ],
    ),
    /**
   * 
   * drinks
   */

    MenuItems(
      name: "Strawberry Daiquiri",
      description:
          "The Strawberry Daiquiri is a fruity and vibrant cocktail that's perfect for summer. It's made with white rum, fresh strawberries, lime juice, and simple syrup, blended with ice until smooth and frothy. Served in a chilled glass, it's often garnished with a fresh strawberry or lime wheel. The Strawberry Daiquiri is a sweet and refreshing drink that's sure to cool you down on a hot day.",
      imagepath: "lib/image/drinks/sb.jpg",
      price: 34.99,
      catagory: FoodCatagories.drinks,
      avaliable: [
        Addons(name: " Coconut Rum Splash", price: 6.99),
      ],
    ),
    MenuItems(
      name: "Piña Colada",
      description:
          "The Piña Colada is a tropical cocktail that evokes images of sandy beaches and swaying palm trees. It's made with rum, coconut cream, and pineapple juice, shaken with ice and strained into a chilled glass. Garnished with a slice of pineapple and a maraschino cherry, the Piña Colada is known for its creamy texture and sweet, tropical flavor. It's the perfect vacation drink, whether you're lounging by the pool or dreaming of warmer climates",
      imagepath: "lib/image/drinks/pc.jpg",
      price: 29.99,
      catagory: FoodCatagories.drinks,
      avaliable: [
        Addons(name: "Toasted Coconut Rim", price: 6.99),
      ],
    ),
    MenuItems(
      name: "Old Fashioned",
      description:
          "The Old Fashioned is a timeless classic cocktail that's favored by whiskey enthusiasts. It's made by muddling a sugar cube with Angostura bitters, then adding whiskey (typically bourbon or rye) and a few ice cubes. The drink is stirred gently and garnished with a twist of orange peel or a maraschino cherry. The Old Fashioned is known for its bold and complex flavor profile, making it a favorite among connoisseurs",
      imagepath: "lib/image/drinks/og.jpeg",
      price: 14.99,
      catagory: FoodCatagories.drinks,
      avaliable: [
        Addons(name: "Flamed Orange Peel", price: 6.99),
      ],
    ),
    MenuItems(
      name: "Espresso Martini",
      description:
          "The Espresso Martini is a sophisticated cocktail that combines the rich flavors of coffee with the smoothness of vodka. It's made with freshly brewed espresso, vodka, coffee liqueur (such as Kahlua), and a touch of simple syrup for sweetness. Shaken with ice and strained into a chilled martini glass, it's garnished with coffee beans for an aromatic finish. The Espresso Martini is a perfect after-dinner drink, offering a delightful combination of caffeine and alcohol",
      imagepath: "lib/image/drinks/em.jpeg",
      price: 19.99,
      catagory: FoodCatagories.drinks,
      avaliable: [
        Addons(name: "Chocolate Drizzle", price: 6.99),
      ],
    ),
    MenuItems(
      name: "Mojito",
      description:
          "The Mojito is a refreshing cocktail that originates from Cuba. It features a mix of white rum, fresh lime juice, muddled mint leaves, sugar, and soda water. Served over ice in a tall glass, it's garnished with a sprig of mint and a lime wedge. The Mojito is known for its crisp and zesty flavor profile, making it a perfect choice for warm summer days or evenings",
      imagepath: "lib/image/drinks/i1.webp",
      price: 29.99,
      catagory: FoodCatagories.drinks,
      avaliable: [
        Addons(name: "Mixed Berry Infusion", price: 6.99),
      ],
    ),
  ];

  //getting the list of menus
  List<MenuItems> get menuitems => _menuitems;

  //get the cart

  //getting the list of menus
  List<CartItems> get cart => _cart;

  //add to cart
  List<CartItems> get _cart => [];

  void addtoCart(MenuItems food, List<Addons> selectedAddons) {
    // check if the items is selected or not

    CartItems? cartItems = _cart.firstWhereOrNull((items) {
      bool isSamefood = items.food == food;

      bool isSameAddons =
          const ListEquality().equals(items.selectedItems, selectedAddons);

      return isSamefood && isSameAddons;
    });

    //if increase the quatity if the items exist
    if (cartItems != null) {
      cartItems.quantity++;
    }
    //adding to new items to the cart
    else {
      _cart.add(
        CartItems(food: food, selectedItems: selectedAddons),
      );
    }

    notifyListeners();
  }

  //Remove to the cart

  void removeItemsFromCart(CartItems cartItems) {
    int cartIndex = _cart.indexOf(cartItems);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart

  double getTotalePrice() {
    double totalprice = 0.0;

    for (CartItems cartItems in _cart) {
      double itemstotal = cartItems.food.price;

      for (Addons addons in cartItems.selectedItems) {
        itemstotal += addons.price;
      }

      totalprice += itemstotal * cartItems.quantity;
    }
    return totalprice;
  }

  //get total number of items

  int getTotalItemscount() {
    int totalItems = 0;
    for (CartItems cartItems in _cart) {
      totalItems = cartItems.quantity;
    }
    return totalItems;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /**
  * 
  generate  a reciptr

  */

  //generate recipt

  //format double value into money

  //format list of addons into a string summary
}
