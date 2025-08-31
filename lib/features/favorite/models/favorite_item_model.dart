class FavoriteItemModel {
  final int id;
  final String image;
  final String name;
  String quantaty;
  double price;

  FavoriteItemModel({
    required this.id,
    required this.image,
    required this.name,
    required this.quantaty,
    required this.price,
  });
}