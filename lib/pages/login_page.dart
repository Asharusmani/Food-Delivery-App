import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTab;
   const LoginPage({super.key,
   this.onTab});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

   //login method
  void login() {
    /*
// fill out authentication here....

*/
//navigate to home page
  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),),);
  
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //logo
          Icon(
            Icons.lock_open_rounded,size: 72,color:
          Theme.of(context).colorScheme.inversePrimary,),

           SizedBox(height: 25,),

          //message ,app slogan
          Text("Food Delivery App",
            style: TextStyle(
                fontSize:16,color:
            Theme.of(context).colorScheme.inversePrimary ),),

            SizedBox(height: 25,),

          // email text field
            MyTextfield(
                controller: emailController,
                hintText: "Email",
                obscureText: false,),

            SizedBox(height: 10,),

          //password text field
            MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,),

            SizedBox(height: 25,),

          //sign in button
            MyButton(text: "Sign In", onTab: login,),

            SizedBox(height: 20,),
          //not a member? register now
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Not a member?",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
              const SizedBox(width: 4),
              GestureDetector(onTap: widget.onTab,
                child: Text("Register now",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontWeight: FontWeight.bold),
                ),
              ),

              ],
            )
        ],),
      ),
    );
  }
}
