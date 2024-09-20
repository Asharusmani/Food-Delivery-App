import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';
 class RegisterPage extends StatefulWidget {
   final void Function()? onTab;

   const RegisterPage({super.key,
   this.onTab,});

 
   @override
   State<RegisterPage> createState() => _RegisterPageState();
 }
 
 class _RegisterPageState extends State<RegisterPage> {
   // text editing controller
   final TextEditingController emailController = TextEditingController();

   final TextEditingController passwordController = TextEditingController();
   final TextEditingController confirmPasswordController = TextEditingController();

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
             Text("Let's create an account for you",
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

             SizedBox(height: 10,),

             //confirmPassword text field
             MyTextfield(
               controller: confirmPasswordController,
               hintText: "Confirm Password",
               obscureText: true,),

             SizedBox(height: 25,),

             //sign Up button
             MyButton(text: "Sign Up", onTab: () {

             },),
             SizedBox(height: 20,),
             //Already have an  account? Login here
             Row(mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("already have an account?",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                     ),
                 SizedBox(width: 4),
                 GestureDetector(onTap: widget.onTab,
                   child: Text("Login now",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontWeight: FontWeight.bold),
                   ),
                 ),
       ],)



           ],),
       ),


     );
   }
 }
 