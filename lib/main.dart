import 'package:flutter/material.dart';
import 'package:food_delivery_app/auth/login_or_register.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/pages/login_page.dart';
import 'package:food_delivery_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';


void main(){
  runApp(
      MultiProvider(providers: [
        //theme provider
        ChangeNotifierProvider( create: (context) => ThemeProvider()),


        //restaurant provider
        ChangeNotifierProvider( create: (context) => Restaurant()),


      ],
        child: const  Myapp(),
      )

  );
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),

      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}