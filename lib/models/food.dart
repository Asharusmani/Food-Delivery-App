
//food item
class Food{
   final String name; //cheese burger
   final String description; // a burger  of full cheese
   final String imagePath; //lib/images/cheese_burger.png
   final double price; //4.09
  final FoodCategory category; //burger
  List<Addon>availableAddons; //[extra cheese,sauce]


Food({
   required this.name,
required this.description,
required this.imagePath,
required this.price,
  required this.category,
  required this.availableAddons,
});
}

//food categories
enum FoodCategory{
  Burger,
  Salads,
  Sides,
  Desert,
  Drink,
}
//food addon
class Addon{
 String name;
 double price;
 Addon({
   required this.name,
   required this.price,
});
}
