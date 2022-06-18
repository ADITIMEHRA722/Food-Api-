import 'dart:async';

import 'package:api_recipe/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   void initState(){
    super.initState();
    Timer(Duration(seconds: 5), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>HomePage() )));
   }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            Colors.amber,
            Colors.pink,
          ]
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            
            children: [
              
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYQGtX7FZShbffp9OvF4MdKa-UKnClXPDhL3b358ndoCLKKTYkt_jaEqBTD3u97JEhVKk&usqp=CAU",
                 height: 300.0, width: 300.0,),

                  Text(" Food Recipe",
             textAlign: TextAlign.center, 
             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),),

            ],
          ),

            
             CircularProgressIndicator( color: Colors.white,),
        ],
      ),
    );
    
  }
}