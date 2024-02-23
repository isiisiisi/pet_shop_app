import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'landing_screen.dart';
import 'model/cart_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pet Shop',
        home: LandingScreen(),
      ),
    );
  }
}
