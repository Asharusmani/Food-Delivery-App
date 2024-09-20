import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text("Settings"),
      ),
      body: Column(children: [
        Container(decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.secondary),
          margin: EdgeInsets.only(left: 25,top: 10,right: 25),
          padding: EdgeInsets.all(25),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            //Dark Mode
            Text("Dark Mode",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary),),

            //switch
            CupertinoSwitch(value: Provider.of<ThemeProvider>(context,listen: false).isDarkMode,
            onChanged: (value) => Provider.of<ThemeProvider>(context,listen: false).toggleTheme(),),
          ],),
        )
      ],),


    );
  }
}
