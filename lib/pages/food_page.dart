import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';

import '../models/food.dart';

class FoodPage extends StatefulWidget {
final Map<Addon, bool> selectedAddons={};
  final Food food;
   FoodPage({super.key,
  required this.food,
  }){
     //initialize selected addons to be false
     for(Addon addon in food.availableAddons){
       selectedAddons[addon] =  false;
     }

   }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Scaffold Ui
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                //Food image
                Image.network(widget.food.imagePath,
                  height: 350,width: 400,fit: BoxFit.cover,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    //Food Name
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 10,right: 8),
                      child: Text(widget.food.name,style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                    ),


                    //Food Description
                    Padding(
                      padding: const EdgeInsets.only(top: 6 , left: 10,right: 8),
                      child: Text(widget.food.description,
                        style: TextStyle(fontSize: 14,color: Theme.of(context).colorScheme.inversePrimary),),
                    ),
                    SizedBox(height: 4,),

                    Padding(
                      padding: const EdgeInsets.only(top: 4, left: 10,right: 8),
                      child: Text('\$ ${widget.food.price.toString()}',
                        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                    ),
                    Divider(
                      color: Theme.of(context).colorScheme.secondary,
                    ),

                    SizedBox(height: 5,),

                    //Addons

                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
                      child: Text("Add-ons",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 18,fontWeight: FontWeight.bold),),
                    ),

                    SizedBox(height: 3,),
                    //Addons
                    Container(decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.secondary),
                        borderRadius: BorderRadius.circular(8)
                    ),

                      child: ListView.builder(shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,

                        itemCount: widget.food.availableAddons.length,
                        itemBuilder: (context, index) {
                          //get individual Addons
                          Addon addon = widget.food.availableAddons[index];
                          //return checkbox Ui

                          return CheckboxListTile(
                            title: Text(
                              addon.name,
                              style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,
                                  fontSize: 14,fontWeight: FontWeight.bold),),
                            subtitle:
                            Text('\$ ${
                                addon.price.toString()}',
                              style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                            value: widget.selectedAddons[addon],
                            onChanged: (bool? value) {
                              setState(() {
                                widget.selectedAddons[addon] = value!;
                              });
                            } ,);
                        },),
                    )
                  ],),

                //Button Add to card
                MyButton(text: "Add to card",onTab: () {

                },),
                SizedBox(height: 20,),
              ],),
            //Button Add to card

          ),

        ),

        //Back button
        SafeArea(
          child: Opacity(
            opacity: 0.5,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              decoration:  BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: IconButton(onPressed: () {
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back_ios_new_rounded)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
