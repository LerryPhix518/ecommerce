import "package:ecommerce/screens/navigation_screen.dart";
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ecommerce Store",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),

      home: NavigationScreen(),
    );
  }
}
