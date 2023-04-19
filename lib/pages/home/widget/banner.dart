import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);


  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final imageList = [
    'images/banner1.png',
    'images/banner1.png',
    'images/banner1.png',
    'images/banner1.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 10,
          color: Color(0xffF99B2A),
          margin: EdgeInsets.only(top: 3),
        ),
        SizedBox(
            height: 140,
            width: double.infinity,
            child: Stack(
              children: [
                Swiper(
                  pagination: const SwiperPagination(
                      alignment: Alignment(0.8,1),
                      // builder: SwiperPagination.fraction,
                      builder:  FractionPaginationBuilder(
                          color: Color(0xff333333),
                          fontSize: 12,
                          activeColor: Color(0xff333333),
                          activeFontSize: 12
                      )
                  ),
                  itemBuilder: (BuildContext context, int index){
                    return Image(image: AssetImage(imageList[index]), fit: BoxFit.contain);
                  },
                  autoplay: true,
                  itemCount: imageList.length,
                ),
                // Positioned(
                //   bottom: 10,
                //   right: 20,
                //   child: Container(
                //     width: 38,
                //     height: 23,
                //     decoration: BoxDecoration(
                //      borderRadius: BorderRadius.circular(20),
                //       color: Color(0xffffffff),
                //     ),

                //   ),
                // ),
              ],
            )
        )
      ],
    );
  }
}
