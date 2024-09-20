import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  final String text;
  final IconData? icon;

  final void Function()? onTab;

  const MyDrawerTile({super.key,
  required this.onTab,required this.text,required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: ListTile(
        title: Text(text,style: TextStyle(
          color: Theme.of(context).colorScheme.inversePrimary,
        ),),
        leading: Icon(icon,color: Theme.of(context).colorScheme.inversePrimary,),
        onTap: onTab,
      ),
    );
  }
}
