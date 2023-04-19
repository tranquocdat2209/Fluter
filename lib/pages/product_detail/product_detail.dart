import 'package:flutter/material.dart';
class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter layout product detail',
      home: Scaffold(
        body: Center(
          child: Text('Flutter layout product detail'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}