import 'package:flutter/material.dart';
import 'pages/home/home.dart';
import 'appbar.dart';
import 'pages/product_detail/product_detail.dart';
import 'pages/cart/cart.dart';
import 'pages/store_locator/store_locartor.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int currentTab = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ProductDetail(),
    Cart(),
    StoreLocator(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(),
          body: PageStorage(
            // link page
            bucket: bucket,
            child: currentScreen,
          ),
          floatingActionButton: Container(
            width: 74,
            height: 74,
            margin: EdgeInsets.only(top: 25),
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color(0xffEE2E24),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = ProductDetail();
                  });
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(image: AssetImage('images/user.png')),
                      Text(
                        'Trang chủ',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 9,
                            fontWeight: FontWeight.w600,
                            height: 2),
                      )
                    ]),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            // notchMargin: 20,
            child: Container(
              height: 60,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 4,
                    offset: Offset(0, 0),
                    blurStyle: BlurStyle.outer),
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MaterialButton(
                        minWidth: 80,
                        onPressed: () {
                          setState(() {
                            currentScreen = HomePage();
                          });
                        },
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(image: AssetImage('images/home.png')),
                              Text(
                                'Trang chủ',
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                    height: 2),
                              )
                            ]),
                      ),
                      MaterialButton(
                        minWidth: 80,
                        onPressed: () {
                          setState(() {
                            currentScreen = Cart();
                          });
                        },
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(image: AssetImage('images/product.png')),
                              Text(
                                'Sản phẩm',
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                    height: 2),
                              )
                            ]),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = HomePage();
                          });
                        },
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(image: AssetImage('images/locator.png')),
                              Text(
                                'Tìm cửa hàng',
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                    height: 2),
                              )
                            ]),
                      ),
                      PopupMenuButton(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 25, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('images/menu.png')),
                              Text(
                                'Home',
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                    height: 2),
                              )
                            ],
                          ),
                        ),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            value: 1,
                            child: Text("Facebook"),
                          ),
                          PopupMenuItem(
                            value: 2,
                            child: Text("Instagram"),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
