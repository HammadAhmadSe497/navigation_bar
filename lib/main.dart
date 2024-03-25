import 'package:flutter/material.dart';
import 'package:navigation_bar/home_screen.dart';
import 'package:navigation_bar/screen_two.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id:(context) => const HomeScreen(),
        ScreenTwo.id : (context) =>  const ScreenTwo(),
      },
    );
  }
}
