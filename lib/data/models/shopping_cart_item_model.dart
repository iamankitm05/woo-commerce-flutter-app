import 'package:woo_commerce/data/models/product_model.dart';

class ShoppingCartItem {
  final Product product;
  int _quentity;
  double _totalPrice;

  ShoppingCartItem({
    required this.product,
  })  : _quentity = 1,
        _totalPrice = product.price;

  int get quentity => _quentity;
  double get totalPrice => _totalPrice;

  void increaseQuentity() {
    _quentity += 1;
    _totalPrice = product.price * _quentity;
  }
  
  void deccreaseQuentity() {
    _quentity += 1;
    _totalPrice = product.price * _quentity;
  }
}
