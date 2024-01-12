import 'package:woo_commerce/data/models/product_model.dart';
import 'package:woo_commerce/data/models/shopping_cart_model.dart';

ShoppingCart dummyShoppingCart(List<Product> products) {
  final ShoppingCart shoppingCart = ShoppingCart(shippingPrice: 10, tax: 7);

  for(Product product in products) {
    shoppingCart.addItemsInCart(product);
  }

  return shoppingCart;
}