import 'package:flutter/material.dart';
class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter layout product cart',
      home: Scaffold(
        body: Center(
          child: Text('Flutter layout product cart'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}