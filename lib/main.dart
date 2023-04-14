import 'package:circle_k/appbar.dart';
import 'package:flutter/material.dart';
import 'banner.dart';
import 'icon_list.dart';
import 'sticky_ft.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Theme.of(context).copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: const Color(0xffEE2E24),),
      ),
      home: Scaffold(
        appBar: buildAppBar(),
        // body: buildIconsList()
        body: ListView(
          children: [
            SliderScreen(),
            // buildIconsList(),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}