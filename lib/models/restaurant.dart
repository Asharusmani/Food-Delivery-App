import 'package:flutter/cupertino.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // List of food menu
  final List<Food> _menu = [
    // Burgers
    Food(
      name: "Classic Cheese Burger",
      description: "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "https://images.pexels.com/photos/12664796/pexels-photo-12664796.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 21.99,
      category: FoodCategory.Burger,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.50),
        Addon(name: "Extra Patty", price: 0.30),
        Addon(name: "Bacon", price: 1.00),
        Addon(name: "BBQ Sauce", price: 0.75),
      ],
    ),
    Food(
      name: "Bacon Burger",
      description: "A beef patty topped with crispy bacon, cheddar cheese, and barbecue sauce.",
      imagePath: "https://images.pexels.com/photos/27998840/pexels-photo-27998840/free-photo-of-a-burger-and-fries-on-a-plate-on-a-table.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 22.99,
      category: FoodCategory.Burger,
      availableAddons: [
        Addon(name: "Extra Bacon", price: 1.00),
        Addon(name: "Avocado", price: 1.50),
        Addon(name: "Onion Rings", price: 0.75),
        Addon(name: "Spicy Mayo", price: 0.60),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description: "A grilled veggie patty with fresh lettuce, tomato, and avocado.",
      imagePath: "https://images.pexels.com/photos/5374420/pexels-photo-5374420.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 21.49,
      category: FoodCategory.Burger,
      availableAddons: [
        Addon(name: "Extra Veggies", price: 0.50),
        Addon(name: "Hummus", price: 1.00),
        Addon(name: "Feta Cheese", price: 0.75),
        Addon(name: "Garlic Sauce", price: 0.50),
      ],
    ),
    Food(
      name: "Spicy Chicken Burger",
      description: "A spicy chicken patty with jalapeños, pepper jack cheese, and spicy mayo.",
      imagePath: "https://images.pexels.com/photos/4628466/pexels-photo-4628466.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 22.49,
      category: FoodCategory.Burger,
      availableAddons: [
        Addon(name: "Extra Spicy Sauce", price: 0.50),
        Addon(name: "Pickles", price: 0.30),
        Addon(name: "Cheddar Cheese", price: 0.75),
        Addon(name: "Sliced Jalapeños", price: 0.50),
      ],
    ),

    // Salads
    Food(
      name: "Caesar Salad",
      description: "Crisp romaine lettuce with Caesar dressing and croutons.",
      imagePath: "https://images.pexels.com/photos/1211887/pexels-photo-1211887.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 21.99,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra Chicken", price: 1.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Bacon Bits", price: 0.75),
        Addon(name: "Parmesan Cheese", price: 0.50),
      ],
    ),
    Food(
      name: "Greek Salad",
      description: "Mixed greens, feta cheese, olives, and a lemon vinaigrette.",
      imagePath: "https://images.pexels.com/photos/3026013/pexels-photo-3026013.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 22.49,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra Feta", price: 0.75),
        Addon(name: "Olives", price: 0.50),
        Addon(name: "Grilled Chicken", price: 1.50),
        Addon(name: "Cucumber Slices", price: 0.30),
      ],
    ),
    Food(
      name: "Garden Salad",
      description: "Fresh vegetables with your choice of dressing.",
      imagePath: "https://images.pexels.com/photos/1277481/pexels-photo-1277481.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      price: 20.99,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra Dressing", price: 0.50),
        Addon(name: "Croutons", price: 0.30),
        Addon(name: "Cheese", price: 0.75),
        Addon(name: "Avocado", price: 1.00),
      ],
    ),
    Food(
      name: "Fruit Salad",
      description: "A mix of seasonal fruits served with honey.",
      imagePath: "https://images.pexels.com/photos/5639367/pexels-photo-5639367.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      price: 21.49,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Honey Drizzle", price: 0.50),
        Addon(name: "Mint Leaves", price: 0.30),
        Addon(name: "Yogurt", price: 0.75),
        Addon(name: "Chia Seeds", price: 0.50),
      ],
    ),

    // Sides
    Food(
      name: "French Fries",
      description: "Crispy golden fries served with ketchup.",
      imagePath: "https://images.pexels.com/photos/1893556/pexels-photo-1893556.jpeg?auto=compress&cs=tinysrgb&w=600",
      price: 20.49,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.75),
        Addon(name: "Chili", price: 1.00),
        Addon(name: "Onion Rings", price: 1.50),
        Addon(name: "Garlic Aioli", price: 0.50),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Crispy onion rings served with ranch dressing.",
      imagePath: "https://images.pexels.com/photos/15801007/pexels-photo-15801007/free-photo-of-crispy-fried-calamari-and-sauce.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 20.99,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Spicy Ranch", price: 0.50),
        Addon(name: "Barbecue Sauce", price: 0.30),
        Addon(name: "Extra Crunch", price: 0.75),
        Addon(name: "Cheddar Cheese", price: 1.00),
      ],
    ),
    Food(
      name: "Mozzarella Sticks",
      description: "Fried mozzarella sticks served with marinara sauce.",
      imagePath: "https://images.pexels.com/photos/17121733/pexels-photo-17121733/free-photo-of-nuggets-in-cups.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 21.49,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Marinara Sauce", price: 0.50),
        Addon(name: "Garlic Dip", price: 0.30),
        Addon(name: "Parmesan Sprinkles", price: 0.75),
        Addon(name: "Spicy Sauce", price: 0.60),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description: "Toasted garlic bread with herbs.",
      imagePath: "https://images.pexels.com/photos/5639423/pexels-photo-5639423.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 20.99,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Cheese", price: 0.75),
        Addon(name: "Marinara Sauce", price: 0.50),
        Addon(name: "Herb Butter", price: 0.30),
        Addon(name: "Extra Garlic", price: 0.40),
      ],
    ),

    // Drinks
    Food(
      name: "Coca Cola",
      description: "Classic Coca Cola soft drink.",
      imagePath: "https://images.pexels.com/photos/3819969/pexels-photo-3819969.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 21.99,
      category: FoodCategory.Drink,
      availableAddons: [
        Addon(name: "Lemon Slice", price: 0.30),
        Addon(name: "Ice", price: 0.00),
        Addon(name: "Extra Sweet", price: 0.50),
        Addon(name: "Mint Leaves", price: 0.40),
      ],
    ),
    Food(
      name: "Lemonade",
      description: "Freshly squeezed lemonade with a hint of mint.",
      imagePath: "https://images.pexels.com/photos/5817515/pexels-photo-5817515.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      price: 22.49,
      category: FoodCategory.Drink,
      availableAddons: [
        Addon(name: "Mint Leaves", price: 0.30),
        Addon(name: "Lemon Slice", price: 0.20),
        Addon(name: "Sugar", price: 0.10),
        Addon(name: "Extra Ice", price: 0.00),
      ],
    ),
    Food(
      name: "Iced Tea",
      description: "Refreshing iced tea with lemon.",
      imagePath: "https://images.pexels.com/photos/1484678/pexels-photo-1484678.jpeg?auto=compress&cs=tinysrgb&w=600",
      price: 21.29,
      category: FoodCategory.Drink,
      availableAddons: [
        Addon(name: "Lemon Wedge", price: 0.30),
        Addon(name: "Sweetener", price: 0.20),
        Addon(name: "Peach Flavor", price: 0.50),
        Addon(name: "Mint Leaves", price: 0.40),
      ],
    ),
    Food(
      name: "Milkshake",
      description: "Thick and creamy milkshake with your choice of flavor.",
      imagePath: "https://images.pexels.com/photos/7671668/pexels-photo-7671668.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      price: 22.99,
      category: FoodCategory.Drink,
      availableAddons: [
        Addon(name: "Extra Whipped Cream", price: 0.50),
        Addon(name: "Chocolate Syrup", price: 0.30),
        Addon(name: "Sprinkles", price: 0.20),
        Addon(name: "Flavor Shot", price: 0.40),
      ],
    ),

    // Desserts
    Food(
      name: "Chocolate Cake",
      description: "Rich chocolate cake with creamy frosting.",
      imagePath: "https://images.pexels.com/photos/4109998/pexels-photo-4109998.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      price: 21.99,
      category: FoodCategory.Desert,
      availableAddons: [
        Addon(name: "Ice Cream", price: 1.00),
        Addon(name: "Chocolate Drizzle", price: 0.50),
        Addon(name: "Berries", price: 0.75),
        Addon(name: "Whipped Cream", price: 0.40),
      ],
    ),
    Food(
      name: "Ice Cream",
      description: "Your choice of vanilla, chocolate, or strawberry.",
      imagePath: "https://images.pexels.com/photos/1739347/pexels-photo-1739347.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 20.49,
      category: FoodCategory.Desert,
      availableAddons: [
        Addon(name: "Sprinkles", price: 0.30),
        Addon(name: "Chocolate Sauce", price: 0.20),
        Addon(name: "Nuts", price: 0.50),
        Addon(name: "Whipped Cream", price: 0.40),
      ],
    ),
    Food(
      name: "Cheesecake",
      description: "Creamy cheesecake topped with strawberries.",
      imagePath: "https://images.pexels.com/photos/1126359/pexels-photo-1126359.jpeg?auto=compress&cs=tinysrgb&w=600",
      price: 22.49,
      category: FoodCategory.Desert,
      availableAddons: [
        Addon(name: "Extra Strawberries", price: 0.50),
        Addon(name: "Chocolate Drizzle", price: 0.40),
        Addon(name: "Whipped Cream", price: 0.30),
        Addon(name: "Caramel Sauce", price: 0.50),
      ],
    ),
    Food(
      name: "Fruit Tart",
      description: "Delicious tart filled with custard and topped with fresh fruits.",
      imagePath: "https://images.pexels.com/photos/2273823/pexels-photo-2273823.jpeg?auto=compress&cs=tinysrgb&w=600",
      price: 21.49,
      category: FoodCategory.Desert,
      availableAddons: [
        Addon(name: "Extra Custard", price: 0.50),
        Addon(name: "Fresh Fruits", price: 0.75),
        Addon(name: "Whipped Cream", price: 0.40),
        Addon(name: "Mint Leaves", price: 0.30),
      ],
    ),
  ];

  /*
  G E T T E R S
  */
  List<Food> get menu => _menu;

/*
   O P E R A T I O N S
  */
// Add to cart

// Remove from cart

// Get total price of cart

// Get total number of items in cart

// Clear cart

/*
  H E L P E R S
  */
// Generate the receipt

// Format double value into money

// Format list of addons into a string summary
}
