import 'package:woo_commerce/data/models/product_model.dart';
import 'package:woo_commerce/data/models/shopping_cart_item_model.dart';

class ShoppingCart {
  final List<ShoppingCartItem> _cartItems;
  double _totalPrice;
  double shippingPrice;
  double tax;

  ShoppingCart({
    this.shippingPrice = 0,
    this.tax = 0,
  })  : _cartItems = <ShoppingCartItem>[],
        _totalPrice = 0;

  List<ShoppingCartItem> get cartItems => _cartItems;
  double get totalPrice => _totalPrice;

  void addItemsInCart(Product product) {
    final cartItemIndex =
        _cartItems.indexWhere((cartItem) => cartItem.product == product);

    // if product is already add into card then increase its quentity
    if (cartItemIndex != -1) {
      _cartItems[cartItemIndex].increaseQuentity();
    }
    // else add that product to cart
    else {
      _cartItems.add(ShoppingCartItem(product: product));
    }

    _totalPrice += product.price;
  }

  void removeItemsInCart(Product product) {
    final cartItemIndex =
        _cartItems.indexWhere((cartItem) => cartItem.product == product);

    // check product if in the list or not
    if (cartItemIndex != -1) {
      try {
        _cartItems[cartItemIndex].deccreaseQuentity();
      } on Exception catch (_) {
        _cartItems.removeAt(cartItemIndex);
      } finally {
        _totalPrice -= product.price;
      }
    }
  }
}
