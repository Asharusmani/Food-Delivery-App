import 'package:flutter/cupertino.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier{
  // List of food menu
  final List<Food> _menu = [
    // Burgers
    Food(
      name: "Classic Cheese Burger",
      description: "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "https://images.pexels.com/photos/12664796/pexels-photo-12664796.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 4.99,
      category: FoodCategory.Burger,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.50),
        Addon(name: "Bacon", price: 1.00),
      ],
    ),
    Food(
      name: "Bacon Burger",
      description: "A beef patty topped with crispy bacon, cheddar cheese, and barbecue sauce.",
      imagePath: "https://images.pexels.com/photos/27998840/pexels-photo-27998840/free-photo-of-a-burger-and-fries-on-a-plate-on-a-table.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 5.99,
      category: FoodCategory.Burger,
      availableAddons: [
        Addon(name: "Extra Bacon", price: 1.00),
        Addon(name: "Avocado", price: 1.50),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description: "A grilled veggie patty with fresh lettuce, tomato, and avocado.",
      imagePath: "https://images.pexels.com/photos/5374420/pexels-photo-5374420.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 4.49,
      category: FoodCategory.Burger,
      availableAddons: [
        Addon(name: "Extra Veggies", price: 0.50),
        Addon(name: "Hummus", price: 1.00),
      ],
    ),
    Food(
      name: "Spicy Chicken Burger",
      description: "A spicy chicken patty with jalapeños, pepper jack cheese, and spicy mayo.",
      imagePath: "https://images.pexels.com/photos/4628466/pexels-photo-4628466.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 5.49,
      category: FoodCategory.Burger,
      availableAddons: [
        Addon(name: "Extra Spicy Sauce", price: 0.50),
        Addon(name: "Pickles", price: 0.30),
      ],
    ),

    // Salads
    Food(
      name: "Caesar Salad",
      description: "Crisp romaine lettuce with Caesar dressing and croutons.",
      imagePath: "https://images.pexels.com/photos/1211887/pexels-photo-1211887.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 4.99,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra Chicken", price: 1.50),
      ],
    ),
    Food(
      name: "Greek Salad",
      description: "Mixed greens, feta cheese, olives, and a lemon vinaigrette.",
      imagePath: "https://images.pexels.com/photos/3026013/pexels-photo-3026013.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 5.49,
      category: FoodCategory.Salads,
      availableAddons: [],
    ),
    Food(
      name: "Garden Salad",
      description: "Fresh vegetables with your choice of dressing.",
      imagePath: "https://images.pexels.com/photos/1277481/pexels-photo-1277481.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      price: 3.99,
      category: FoodCategory.Salads,
      availableAddons: [],
    ),
    Food(
      name: "Fruit Salad",
      description: "A mix of seasonal fruits served with honey.",
      imagePath: "https://images.pexels.com/photos/5639367/pexels-photo-5639367.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      price: 4.49,
      category: FoodCategory.Salads,
      availableAddons: [],
    ),

    // Sides
    Food(
      name: "French Fries",
      description: "Crispy golden fries served with ketchup.",
      imagePath: "https://images.pexels.com/photos/1893556/pexels-photo-1893556.jpeg?auto=compress&cs=tinysrgb&w=600",
      price: 2.49,
      category: FoodCategory.Sides,
      availableAddons: [],
    ),
    Food(
      name: "Onion Rings",
      description: "Crispy onion rings served with ranch dressing.",
      imagePath: "https://images.pexels.com/photos/15801007/pexels-photo-15801007/free-photo-of-crispy-fried-calamari-and-sauce.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 3.29,
      category: FoodCategory.Sides,
      availableAddons: [],
    ),
    Food(
      name: "Mozzarella Sticks",
      description: "Fried mozzarella sticks served with marinara sauce.",
      imagePath: "https://images.pexels.com/photos/17121733/pexels-photo-17121733/free-photo-of-nuggets-in-cups.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 4.49,
      category: FoodCategory.Sides,
      availableAddons: [],
    ),
    Food(
      name: "Garlic Bread",
      description: "Toasted garlic bread with herbs.",
      imagePath: "https://images.pexels.com/photos/5639423/pexels-photo-5639423.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 2.99,
      category: FoodCategory.Sides,
      availableAddons: [],
    ),
    //drink
  Food(
  name: "Coca Cola",
  description: "Classic Coca Cola soft drink.",
  imagePath: "https://images.pexels.com/photos/3819969/pexels-photo-3819969.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  price: 1.99,
  category: FoodCategory.Drink,
  availableAddons: [],
  ),
  Food(
  name: "Lemonade",
  description: "Freshly squeezed lemonade with a hint of mint.",
  imagePath: "https://images.pexels.com/photos/5817515/pexels-photo-5817515.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  price: 2.49,
  category: FoodCategory.Drink,
  availableAddons: [],
  ),
  Food(
  name: "Iced Tea",
  description: "Refreshing iced tea with lemon.",
  imagePath: "https://images.pexels.com/photos/1484678/pexels-photo-1484678.jpeg?auto=compress&cs=tinysrgb&w=600",
  price: 2.29,
  category: FoodCategory.Drink,
  availableAddons: [],
  ),
  Food(
  name: "Milkshake",
  description: "Thick and creamy milkshake with your choice of flavor.",
  imagePath: "https://images.pexels.com/photos/7671668/pexels-photo-7671668.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  price: 3.49,
  category: FoodCategory.Drink,
  availableAddons: [],
  ),


  // Desserts
    Food(
      name: "Chocolate Cake",
      description: "Rich chocolate cake with creamy frosting.",
      imagePath: "https://images.pexels.com/photos/4109998/pexels-photo-4109998.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      price: 3.99,
      category: FoodCategory.Desert,
      availableAddons: [],
    ),
    Food(
      name: "Ice Cream",
      description: "Your choice of vanilla, chocolate, or strawberry.",
      imagePath: "https://images.pexels.com/photos/1739347/pexels-photo-1739347.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 2.49,
      category: FoodCategory.Desert,
      availableAddons: [],
    ),
    Food(
      name: "Cheesecake",
      description: "Creamy cheesecake topped with strawberries.",
      imagePath: "https://images.pexels.com/photos/1126359/pexels-photo-1126359.jpeg?auto=compress&cs=tinysrgb&w=600",
      price: 4.49,
      category: FoodCategory.Desert,
      availableAddons: [],
    ),
    Food(
      name: "Fruit Tart",
      description: "Delicious tart filled with custard and topped with fresh fruits.",
      imagePath: "https://images.pexels.com/photos/2273823/pexels-photo-2273823.jpeg?auto=compress&cs=tinysrgb&w=600",
      price: 3.49,
      category: FoodCategory.Desert,
      availableAddons: [],
    ),
  ];
  /*
  G E T T E R  S

  */
List<Food>  get menu => _menu;

  /*
   O P E R A T I O N S

  */
// add to cart


// remove from cart


//get total price of cart


//get total number of item in cart


//clear cart



/*
  H E L P E R S

  */
//generate the receipt

//format double value into money

//formal list of addons into a string summary


}
