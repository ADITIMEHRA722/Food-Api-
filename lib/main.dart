import 'package:api_recipe/views/home.dart';
import 'package:api_recipe/views/widgets/splaceScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Api',
      theme: ThemeData(
       
        primarySwatch: Colors.pink,
        primaryColor: Colors.white,
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      home:SplashScreen(),
    );
  }
}

       