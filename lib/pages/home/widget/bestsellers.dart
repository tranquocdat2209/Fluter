import 'package:flutter/material.dart';
import '../../../product_model.dart';


class BuildProductBestsellers extends StatelessWidget {
  const BuildProductBestsellers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
      child: Column(
        children:  [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Text(
                'Sản phẩm bán chạyy'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationThickness: 3,
                  decorationColor: Color(0xffEE2E24),
                  shadows: [
                    Shadow(
                        color: Color(0xff000000),
                        offset: Offset(0, -10))
                  ],
                ),
              ),
              Positioned(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 20),
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xffF99B2A)))
                    ),
                  )
              )
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 328,
            child:GridView(
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 170,
                childAspectRatio: 1.1),
              shrinkWrap: true,
              children: List.generate(
                productList.length,
                    (index) => Container(
                  // width: 10,
                  child: Column (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                            child: Image.asset(
                              productList[index].image,
                              fit: BoxFit.cover,
                            ),
                          )
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30,right: 30),
                        child: Text(
                          productList[index].name,
                          style: TextStyle(fontSize: 12, color: Color(0xff000000)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                          productList[index].price,
                          style: TextStyle(fontSize: 12, color: Color(0xffEE2E24)),
                          textAlign: TextAlign.center,
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 238,
            height: 40,
            margin: EdgeInsets.only(top: 20),
            child: OutlinedButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xffffffff),
                side: BorderSide(color: Color(0xffee2e24)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Xem thêm sản phẩm".toUpperCase(),
                    style: TextStyle(color: Color(0xffEE2E24), fontSize: 14, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset('images/arrow_right.png',)
                ],
              ),
              onPressed: (){},
            ),
          )
        ],
      ),
    );
  }
}
