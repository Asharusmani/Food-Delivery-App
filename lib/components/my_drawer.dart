import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer_tile.dart';

import '../pages/setting_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(children: [
        //logo 
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Icon(Icons.lock_open_rounded,
          size: 60, color: Theme.of(context).colorScheme.inversePrimary,),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Divider(color: Theme.of(context).colorScheme.secondary,),
        ),
        //home list tile
        MyDrawerTile(onTab: () => Navigator.pop(context),
            text: "H O M E", icon: Icons.home),
        //setting list tile
        MyDrawerTile(onTab: () { Navigator.push(context, MaterialPageRoute(builder: (context) => SettingPage(),
        ));},
            text: "S E T T I N G", icon: Icons.settings),
        //logout list tile
        const Spacer(),
        MyDrawerTile(onTab: () {

        }, text: "L O G O U T", icon: Icons.logout),

        SizedBox(height: 25,),
      ],),
    );
  }
}
