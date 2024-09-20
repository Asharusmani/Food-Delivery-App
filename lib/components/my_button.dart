import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()?  onTab;
  final String text;

  const MyButton({super.key,
  required this.text,
    this.onTab,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Text(text,style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,
            fontSize: 16,fontWeight: FontWeight.bold),),
          ),
        ),
      );

  }
}
