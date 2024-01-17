import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
     backgroundColor: Colors.transparent,
     elevation: 0,
     flexibleSpace: Container(
      decoration: BoxDecoration(gradient: LinearGradient(colors:  [

        Color.fromARGB(199, 60, 149, 190),     
         Color.fromARGB(199, 36, 164, 223),    
      ], transform: GradientRotation(90),
      
      
      ))
           ),

    );
  }
}