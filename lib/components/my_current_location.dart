import 'package:flutter/material.dart';
 class MyCurrentLocation extends StatelessWidget {
   void openLocationSearchBox (BuildContext context){
     showDialog(context: context, builder: (context) => AlertDialog(
       title: Text("Your Location"),
       content: TextField(
         decoration: InputDecoration(
           hintText: "Search address..",
               hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary)
         ),
       ),
       actions: [
         //cancel button
        MaterialButton(onPressed: () => Navigator.pop(context),
        child: Text("Cancel"),),
         SizedBox(width: 40,),
         //save button

         MaterialButton(onPressed: () => Navigator.pop(context),
           child: Text("Save"),),
       ],
     ));
   }
   const MyCurrentLocation({super.key});

   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(20.0),
       child: Column(crossAxisAlignment: CrossAxisAlignment.start,
         children: [
         Text("Deliver now",style: TextStyle(color: Theme.of(context).colorScheme.primary),),
         GestureDetector(onTap: () => openLocationSearchBox(context),
           child: Row(
             children: [
               // address
              Text("Fb area block 12 karachi",style: TextStyle(
             color: Theme.of(context).colorScheme.inversePrimary,
             fontWeight: FontWeight.bold),),

               //drop down menu
               Icon(Icons.keyboard_arrow_down_rounded),
             ],
           ),
         )
       ],),
     );
   }
 }
