import 'package:flutter/material.dart';

AppBar buildAppBar () => AppBar(
  backgroundColor: const Color(0xffEE2E24),
  leading: Image.asset('images/logo.png' ),
  leadingWidth: 90,
  title: SizedBox(
    width:double.infinity,
    height: 40,
    child: Stack(
      children: [
        TextField(
          textAlign: TextAlign.left,
          maxLines: 1,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff333333),
              height: 1.4
          ),
          decoration: InputDecoration(
            // prefixIcon: Image.asset('images/cart.png'),
            hintText: 'Search for something', filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.only(left: 20, right: 40),
            enabledBorder:OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffe5e5e5), width: 1.0),
                borderRadius: BorderRadius.circular(20)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffe5e5e5), width: 1.0),
                borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 20,
          child: Container(
            child: Image.asset('images/address.png'),
            width: 15,
            height: 20,
          ),
        ),
      ],
    ),
  ),
  actions: [
    IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
    Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset(
          'images/cart.png',
          width: 30,
          height: 23,
        ),
        Positioned(
          bottom: 16,
          right: 0,
          child: Container(
            height: 14,
            width: 14,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffffffff),
            ),
            child: const Center(
                child: Text(
                  "12",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffEE2E24)
                  ),
                )
            ),
          ),
        ),
      ],
    ),

  ],
);