import 'package:woo_commerce/data/models/product_model.dart';
import 'package:woo_commerce/data/models/shopping_cart_item_model.dart';

class ShoppingCart {
  final List<ShoppingCartItem> _cartItems;

  ShoppingCart() : _cartItems = <ShoppingCartItem>[];

  List<ShoppingCartItem> get cartItems => _cartItems;

  void addItemsInCart(Product product) {
    // final ShoppingCartItem = _cartItems.where((cartItem) => cartItems == product).toList();
  }
}
