import 'package:flutter/material.dart';
import 'widget/banner.dart';
import 'widget/icon_list.dart';
import 'widget/bestsellers.dart';
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}
class _HomePage extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SliderScreen(),
            buildIconsList(),
            BuildProductBestsellers()
          ],
        ),
      ),
    );
  }

}