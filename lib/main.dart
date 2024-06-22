
import 'package:flutter/material.dart';
import 'package:ecommerce/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // var GoogleFonts;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Our ecommerce',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // textTheme: GoogleFonts.mulishTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}
