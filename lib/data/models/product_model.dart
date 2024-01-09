class Product {
  final String name;
  final double price;
  final double rating;
  final int totalOrders;
  final String description;
  final bool isShippingFree;

  Product({
    required this.name,
    required this.price,
    required this.description,
    required this.rating,
    required this.totalOrders,
    required this.isShippingFree,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      price: json['price'],
      description: json['description'],
      rating: json['rating'],
      totalOrders: json['order'],
      isShippingFree: json['is_shipping_free'],
    );
  }
}
