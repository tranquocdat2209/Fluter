
class ProductList{
  String name;
  String image;
  String price;


  ProductList({
    required this.image,
    required this.name,
    required this.price,
  });

  static List<ProductList> product = [
    ProductList(
        image: "images/image1.png",
        name: "Mỳ trộn xúc xích trứng chiên",
        price: "24.000Đ"
    ),
    ProductList(
        image: "images/image3.png",
        name: "Sandwich",
        price: "24.000Đ"
    ),
    ProductList(
        image: "images/image2.png",
        name: "Mỳ trộn xúc xích trứng chiên",
        price: "24.000Đ"
    ),
    ProductList(
        image: "images/image3.png",
        name: "Mỳ trộn xúc xích trứng chiên",
        price: "24.000Đ"
    ),
    ProductList(
        image: "images/image3.png",
        name: "Mỳ trộn xúc xích trứng chiên",
        price: "24.000Đ"
    ),
    ProductList(
        image: "images/image3.png",
        name: "Mỳ trộn xúc xích trứng chiên",
        price: "24.000Đ"
    ),
    ProductList(
        image: "images/image3.png",
        name: "Mỳ trộn xúc xích trứng chiên",
        price: "24.000Đ"
    ),
    ProductList(
        image: "images/image3.png",
        name: "Mỳ trộn xúc xích trứng chiên",
        price: "24.000Đ"
    ),
    ProductList(
        image: "images/image3.png",
        name: "Mỳ trộn xúc xích trứng chiên",
        price: "24.000Đ"
    ),

  ];
}
final List<ProductList> productList = ProductList.product;