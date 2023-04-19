import 'package:flutter/material.dart';
class IconList {
  String icon;
  String title;
  IconList({
    required this.icon,
    required this.title,
  });
  static List<IconList> icons = [
    IconList(
        icon: 'images/group2.png',
        title: 'Hàng khuyễn mãi'
    ),
    IconList(
        icon: 'images/group2.png',
        title: 'Hàng khuyễn mãi'
    ),
    IconList(
        icon: 'images/group3.png',
        title: 'Hàng khuyễn mãi'
    ),
    IconList(
        icon: 'images/group4.png',
        title: 'Hàng khuyễn mãi'
    ),
    IconList(
        icon: 'images/group5.png',
        title: 'Hàng khuyễn mãi'
    ),
    IconList(
        icon: 'images/group6.png',
        title: 'Hàng khuyễn mãi'
    ),
    IconList(
        icon: 'images/group7.png',
        title: 'Hàng khuyễn mãi'
    ),
    IconList(
        icon: 'images/group8.png',
        title: 'Hàng khuyễn mãi'
    )
  ];
}

final List<IconList> listImage = IconList.icons;

Widget buildIconsList() => GridView(
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, mainAxisSpacing: 20),
  shrinkWrap: true,
  children: List.generate(
    listImage.length,
        (index) => Container(
      // width: 10,
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          blurRadius: 4,
                          offset: Offset(0,0),
                        ),
                      ]
                  ),

                ),
              ),
              Image.asset(
                listImage[index].icon,
                height: 60,
                width: 60,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child:Text(
              listImage[index].title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 10),
            ),
          )
        ],
      ),
    ),
  ),
);