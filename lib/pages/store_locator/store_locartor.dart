import 'package:flutter/material.dart';
class StoreLocator extends StatelessWidget {
  const StoreLocator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter layout store locator',
      home: Scaffold(
        body: Center(
          child: Text('Flutter layout locator'),
        ),
      ),
    );
  }
}
