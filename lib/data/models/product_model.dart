class Product {
  final int id;
  final String name;
  final double price;
  final double rating;
  final double discount;
  final int totalOrders;
  final String imageUrl;
  final String description;
  final bool isShippingFree;
  final int totalReviews;
  final int totalSold;
  final int quentity;
  final int itemNumber;
  final String condition;
  final String buildMaterial;
  final String category;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.discount,
    required this.rating,
    required this.totalOrders,
    required this.isShippingFree,
    required this.imageUrl,
    required this.totalReviews,
    required this.totalSold,
    required this.quentity,
    required this.itemNumber,
    required this.condition,
    required this.buildMaterial,
    required this.category,
  });
}
