class CartItemModel {
  final String image;
  final String name;
  int number;
  String quantaty;
  double price;

  CartItemModel({
    required this.image,
    required this.name,
    required this.number,
    required this.quantaty,
    required this.price,
  });
}