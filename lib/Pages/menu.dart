class MenuItems {
  final String name;
  final String description;
  final String imagepath;
  final double price;
  final FoodCatagories catagory;
  List<Addons> avaliable;

  MenuItems(
      {required this.name,
      required this.description,
      required this.imagepath,
      required this.price,
      required this.catagory,
      required this.avaliable});
}

//food catagory

enum FoodCatagories {
  burger,
  pizza,
  chicken,
  pasta,
  drinks,
}

//food  add on
class Addons {
  String name;
  double price;

  Addons({required this.name, required this.price});
}
