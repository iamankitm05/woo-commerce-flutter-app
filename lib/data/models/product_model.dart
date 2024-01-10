class Product {
  final String name;
  final double price;
  final double rating;
  final double discount;
  final int totalOrders;
  final String imageUrl;
  final String description;
  final bool isShippingFree;

  Product({
    required this.name,
    required this.price,
    required this.description,
    required this.discount,
    required this.rating,
    required this.totalOrders,
    required this.isShippingFree,
    required this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      price: json['price'],
      description: json['description'],
      rating: json['rating'],
      discount: json['discount'],
      totalOrders: json['order'],
      imageUrl: json['image_url'],
      isShippingFree: json['is_shipping_free'],
    );
  }
}
