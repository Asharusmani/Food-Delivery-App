import 'package:flutter/material.dart';
import '../models/food.dart';

class MyFoodTile extends StatelessWidget {
  const MyFoodTile({
    super.key,
    required this.food,
    required this.onTab,
  });

  final Food food;
  final void Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTab,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                // Food details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.name,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        food.description,style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                        maxLines: 2, // Limit description lines
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 3,),
                      Text(
                        '\$ ${food.price.toStringAsFixed(2)}', // Format the price
                        style: TextStyle(color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,),
                // Food image
                SizedBox(
                  height: 120,
                  width: 120, // Set a fixed width for the image
                  child: ClipRRect(borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      food.imagePath,
                      fit: BoxFit.cover, // Cover to maintain aspect ratio
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[300], // Placeholder for image loading
                          child: const Icon(Icons.error),
                        );
                      },
                    ),
                  ),

                ),
              ],

            ),
          ),
        ),


     Divider(
      indent: 25,
      endIndent: 25,
      color: Theme.of(context).colorScheme.tertiary,
    )
    ],
    );
  }
}
