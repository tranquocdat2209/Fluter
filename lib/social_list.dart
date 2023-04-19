import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
final number = '+8468230690';
final Uri _url = Uri.parse('https://flutter.dev');

Widget SocialList() => Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 74,
            height: 74,
            child: FloatingActionButton(
              onPressed: (){
              },
              child: MaterialButton(
                onPressed: () {
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(image: AssetImage('images/user.png')),
                      Text('Trang chủ',style: TextStyle(color:Color(0xffffffff),fontSize: 8, fontWeight: FontWeight.w600, height: 2),)
                    ]
                ),
              ),

            ),
          )
        ],
      )
    ],
);

_launchURL() async {
  const url = 'https://flutter.io';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}