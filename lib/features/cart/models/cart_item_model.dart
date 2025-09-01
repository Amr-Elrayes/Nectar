class CartItemModel {
  final String image;
  final String name;
  String quantaty;
  double price;

  CartItemModel({
    required this.image,
    required this.name,
    required this.quantaty,
    required this.price,
  });
}